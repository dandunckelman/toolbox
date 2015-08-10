class CreateChurches < ActiveRecord::Migration
  def change
    create_table :churches do |t|
      t.string :name
      t.string :denomination
      t.string :primary_address_1
      t.string :primary_address_2
      t.string :primary_address_city
      t.string :primary_address_state
      t.string :primary_address_zip
      t.string :website
      t.string :email
      t.string :phone
      t.string :fax
      t.string :mailing_address_1
      t.string :mailing_address_2
      t.string :mailing_address_city
      t.string :mailing_address_state
      t.string :mailing_address_zip
      t.string :pastor_title
      t.string :pastor_first_name
      t.string :pastor_last_name
      t.string :pastor_address_1
      t.string :pastor_address_2
      t.string :pastor_address_city
      t.string :pastor_address_state
      t.string :pastor_address_zip
      t.string :pastor_home_phone
      t.string :pastor_cell_phone
      t.string :pastor_additional_phone
      t.string :pastor_email
      t.string :pastor_birthdate
      t.string :pastor_spouse_title
      t.string :pastor_spouse_first_name
      t.string :pastor_spouse_last_name
      t.string :pastor_spouse_birthdate
      t.string :pastor_bivocational
      t.string :number_gideoncard_racks
      t.integer :worship_attendance
      t.string :gideon_representative
      t.integer :camp_id
      t.datetime :last_service_date
      t.string :support_level
      t.string :relationship_strength
      t.string :rank
      t.boolean :has_media_broadcast
      t.text :other_info
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
