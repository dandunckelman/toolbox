class ChurchesController < ApplicationController
  def index
    # TODO
    # - add ability to set queries (and accept user input for certain fields)
    #   - I assume these should map to scopes
    # - enable pagination of churches
    @table_headings = [
      'name',
      'rank',
      'primary_address_1',
      'primary_address_city',
      'primary_address_state',
      'primary_address_zip'
    ]

    @churches = Church.limit(25).order('rank desc')
  end

  def directions
    # TODO request user's location or ask for a starting point
    origin = "Moreno Valley, CA"

    @request_data = {
      :destination  => origin, # origin/destination are the same,
      :origin       => origin, # since we want to return to where we started
      :waypoints    => get_waypoints(Church.find(params[:selected_churches_ids].split(',')))
    }
  end

  private
  # TODO setup params for various queries

  def get_waypoints(churches)
    churches.collect do |church|
      "#{church.primary_address_1} " +
        "#{church.primary_address_city}, " +
        "#{church.primary_address_state} " +
        "#{church.primary_address_zip}"
    end
  end
end
