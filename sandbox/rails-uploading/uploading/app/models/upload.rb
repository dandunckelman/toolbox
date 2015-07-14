class Upload < ActiveRecord::Base

  def to_ftp(file)
    require "net/ftp"

    ftp = Net::FTP.new(
      ENV['FTP_SERVER_HOST'],
      ENV['FTP_SERVER_USER'],
      ENV['FTP_SERVER_PASSWORD']
    )

    ftp.putbinaryfile(file, File.basename(file), Net::FTP::DEFAULT_BLOCKSIZE) do |f|
      binding.pry
      exit
    end
  end

end
