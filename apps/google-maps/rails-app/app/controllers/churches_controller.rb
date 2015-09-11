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
    origin = "8641 Orange Ave. Orange, CA 92865"

    request_data = {
      :avoid        => "tolls",
      :destination  => origin, # origin/destination are the same,
                               # since we want to return to where we started
      :key          => ENV['GOOGLE_MAPS_API_TOKEN'],
      :mode         => "driving",
      :origin       => origin,
      :waypoints    => get_waypoints(Church.find(params[:selected_churches_ids]))
    }

    render :json => request_data
  end

  private
  # TODO setup params for various queries

  def get_waypoints(churches)
    waypoints = churches.collect do |church|
      "#{church.primary_address_1} " +
        "#{church.primary_address_city}, " +
        "#{church.primary_address_state} " +
        "#{church.primary_address_zip}"
    end

    waypoints.join("|").gsub(" ", "+")
  end
end
