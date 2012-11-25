class Survey < ActiveRecord::Base
  attr_accessible :city, :description, :end_date, :start_date, :title

  has_many :survey_areas
  has_many :survey_locations, :through => :survey_areas
end
