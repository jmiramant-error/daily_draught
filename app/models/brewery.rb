class Brewery < ActiveRecord::Base
	has_many :beers

  attr_accessible :brewer_id, :country, :decription, :hours_of_operation, :is_closed, :is_primary, :latlong, :locality, :location_lookup, :location_type, :location_type_display, :status_display, :sub_name, :website, :year_opened
end
