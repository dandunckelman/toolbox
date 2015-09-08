require 'csv'

def all_required_fields_are_present?(fields)
  required_fields = [
    :name,
    :primary_address_1,
    :primary_address_city,
    :primary_address_state,
    :primary_address_zip
  ]

  required_fields.each do |r|
    return false if fields[r.to_s].nil?
  end

  true
end

csv_text = File.read("#{Rails.root}/db/seeds/data/churches.csv")

puts "[#{Time.now.to_s}] [SEED-CHURCHES] [INFO] Importing churches from CSV"
CSV.parse(csv_text, :headers => true).each do |row|
  church_data = {}

  row.headers.each do |h|
    row[h] = nil if row[h].strip.empty?
    church_data[h] = row[h]
  end

  next unless all_required_fields_are_present?(church_data)

  begin
    unless Church.find_by_name church_data['name']
      Church.create! church_data
      puts "[#{Time.now.to_s}] [SEED-CHURCHES] [INFO] Created \"#{church_data['name']}\" church"
    end
  rescue ActiveRecord::RecordInvalid => e
    puts "[#{Time.now.to_s}] [SEED-CHURCHES] [ERROR] Failed to create \"#{church_data['name']}\" church because \"#{e.message}\""
  end
end
