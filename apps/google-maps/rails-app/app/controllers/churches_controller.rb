class ChurchesController < ApplicationController
  def index
    # TODO
    # - add ability to set queries (and accept user input for certain fields)
    #   - I assume these should map to scopes
    # - enable pagination
    @table_headings = [
      'name',
      'primary_address_1',
      'primary_address_2',
      'primary_address_city',
      'primary_address_state',
      'primary_address_zip'
    ]

    @churches = Church.limit(10).order(:name)
  end

  def get_directions
    # TODO take in params of multiple locations and make API request to GMAPS
  end

  private
  # TODO setup params for various queries
end
