#!/usr/bin/env ruby
# Script for changing production build numbers for OneScreen.
# Wrriten by Benedict Phan
#
# Assumes that s3cmd is installed and has valid credentials to access S3 bucket

ONESCREEN_BUILD_BUCKET = "onescreen-builds"

# Usage for tool
def usage
    puts "Usage: <project name> <command>"
    puts "\tcurrent                 Find out current build number."
    puts "\tupdate <build number>   Update build number"
#    puts "\trollback <project name>                Rollback build number"
    puts "\tlist                    List all build numbers"
end

# Update Build Number for Project
def update project, buildno
  builds = []
  cmd = `s3cmd -c ~/.s3cfg-onescreen ls s3://#{ONESCREEN_BUILD_BUCKET}/#{project}/`
  cmd.scan(/s3:\/\/onescreen-builds\/#{project}\/(\d*)\//) { |m| builds << m[0].to_i }

  # Check to see if build exists
  if (!builds.include? buildno.to_i)
    puts "Build not found"
    exit
  end

  file = File.new '/tmp/version_production', "w"
  file.puts buildno
  file.close
  `s3cmd -c ~/.s3cfg-onescreen put /tmp/version_production s3cmd -c ~/.s3cfg-onescreen ls s3://#{ONESCREEN_BUILD_BUCKET}/#{project}/`
  File.delete '/tmp/version_production'

  puts "Success! Updated PRODUCTION to build #{buildno}."
end

# Displays Current Build Number for Project
def current project
  `s3cmd -c ~/.s3cfg-onescreen get --force s3://#{ONESCREEN_BUILD_BUCKET}/#{project}/version_production /tmp/version_production`

  file = File.open '/tmp/version_production'
  buildno = file.readline
  file.close
  File.delete '/tmp/version_production'

  puts "Project: #{project}"
  puts "Current Build: #{buildno}"

end

# List Build Numbers for project
def list project
  builds = []
  cmd = `s3cmd -c ~/.s3cfg-onescreen ls s3://#{ONESCREEN_BUILD_BUCKET}/#{project}/`
  cmd.scan(/s3:\/\/onescreen-builds\/#{project}\/(\d*)\//) { |m| builds << m[0].to_i }
  builds.sort!
  puts "Build Numbers"
  puts builds.join " "
end

# Check for valid arguments
if ARGV.length < 2
  usage
  exit
end

case ARGV[1].downcase
  when "update"
    if ARGV.length == 3
        update ARGV[0], ARGV[2]
        exit
    end
    usage
    exit
  when "rollback"
    if ARGV.length == 2
      usage
      exit
    end
    usage
    exit
  when "current"
    if ARGV.length == 2
      current ARGV[0]
      exit
    end
    usage
    exit
  when "list"
    if ARGV.length == 2
      list ARGV[0]
      exit
    end
    usage
    exit
  else
    usage
    exit
end
