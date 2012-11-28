class Survey < ActiveRecord::Base
  attr_accessible :city, :description, :end_date, :start_date, :title

  validates_presence_of :title
  validates_presence_of :start_date
  validates_presence_of :end_date

  has_many :survey_areas
  has_many :survey_locations, :through => :survey_areas
end
