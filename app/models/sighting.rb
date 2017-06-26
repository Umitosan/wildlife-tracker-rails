class Sighting < ActiveRecord::Base
  belongs_to :animal

  validates :date, :presence => true
  validates :lat, :presence => true
  validates :lng, :presence => true
end
