class UpdateChurchSettings < ActiveRecord::Migration
  def change
    columns = [
      {
        :name => "name",
        :default => "CHURCH NAME",
        :null_flag => false
      },
      {
        :name => "denomination",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "primary_address_1",
        :null_flag => false
      },
      {
        :name => "primary_address_2",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "primary_address_city",
        :null_flag => false
      },
      {
        :name => "primary_address_state",
        :null_flag => false
      },
      {
        :name => "primary_address_zip",
        :null_flag => false
      },
      {
        :name => "website",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "email",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "phone",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "fax",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "mailing_address_1",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "mailing_address_2",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "mailing_address_city",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "mailing_address_state",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "mailing_address_zip",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_title",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_first_name",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_last_name",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_address_1",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_address_2",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_address_city",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_address_state",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_address_zip",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_home_phone",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_cell_phone",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_additional_phone",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_email",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_birthdate",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_spouse_title",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_spouse_first_name",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_spouse_last_name",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_spouse_birthdate",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "pastor_bivocational",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "number_gideoncard_racks",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "worship_attendance",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "gideon_representative",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "camp_id",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "last_service_date",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "support_level",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "relationship_strength",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "rank",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "has_media_broadcast",
        :default => nil,
        :null_flag => true
      },
      {
        :name => "other_info",
        :default => nil,
        :null_flag => true
      }
    ]

    columns.each do |c|
      change_column_null    :churches, c[:name].to_sym, c[:null_flag] if c[:null_flag]
      change_column_default :churches, c[:name].to_sym, c[:default]   if c[:default]
    end
  end
end
