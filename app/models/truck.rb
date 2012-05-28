class Truck < ActiveRecord::Base
  has_many :stops, :dependent => :destroy

  def find_stops_by_date( date=Date.today )

    wday_string = date.strftime("%A") + "s"
    date_string = date.to_s

    @truck = Truck.find(id)
    return @truck.stops.where( 'day LIKE ? OR day LIKE ?', wday_string,
      date_string )

  end

end
