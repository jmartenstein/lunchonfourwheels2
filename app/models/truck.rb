class Truck < ActiveRecord::Base
  has_many :stops, :dependent => :destroy

  def find_stops_by_date( date=Date.today )

    find_stops_by_date_range( date, date )

  end

  def find_stops_by_date_range( first_date, second_date )

    stops_val = []

    # first make sure that the second date actually comes after the first
    if (second_date >= first_date)

      # create a string to build up our where clause
      where_array = []

      # iterate over the range between the two dates
      first_date.upto(second_date) do | day |

        # grab a string to match the weekday and a string to match the date
        wday_string = day.strftime("%A") + "s"
        date_string = day.to_s

        where_array += [ "\"day\" LIKE \"#{wday_string}\" OR \"day\" LIKE \"#{date_string}\"" ]

      end

      # grab the truck object that were have instantiated
      @truck = Truck.find(id)
      stops_list = @truck.stops.where( where_array.join( 
        sep=" OR ") ) || []

    end

    return stops_list

  end

end
