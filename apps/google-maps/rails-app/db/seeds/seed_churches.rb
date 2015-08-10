require 'csv'

csv_text = File.read("#{Rails.root}/db/seeds/data/churches.csv")

CSV.parse(csv_text, :headers => true).each do |row|
  Church.create!
end
