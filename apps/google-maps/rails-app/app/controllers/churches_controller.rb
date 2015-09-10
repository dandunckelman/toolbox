class ChurchesController < ApplicationController
  def index
    # TODO
    # - add ability to set queries (and accept user input for certain fields)
    #   - I assume these should map to scopes
    # - enable pagination
    @table_headings = [
      'name',
      'rank',
      'primary_address_1',
      'primary_address_city',
      'primary_address_state',
      'primary_address_zip'
    ]

    @churches = Church.limit(10).order(:name)
  end

  def get_directions
    # TODO take in the user's current location (or ask for a starting point)
    starting_point = nil
    selected_churches = Church.find params[:selected_churches_ids]

    ChurchesHelper.get_directions_from_google(starting_point, selected_churches)
  end

  private
  # TODO setup params for various queries
end
