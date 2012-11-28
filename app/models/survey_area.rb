class SurveyArea < ActiveRecord::Base
  attr_accessible :description, :location, :title

  validates_presence_of :title
  belongs_to :survey
  has_many :survey_locations
end
