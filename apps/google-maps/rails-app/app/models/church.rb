class Church < ActiveRecord::Base
  validates :name,                  presence: true, uniqueness: true
  validates :primary_address_1,     presence: true, uniqueness: true
  validates :primary_address_city,  presence: true
  validates :primary_address_state, presence: true
  validates :primary_address_zip,   presence: true

  scope :by_state, ->(state) { where primary_address_state: state }
end
