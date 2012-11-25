class SurveyArea < ActiveRecord::Base
  attr_accessible :description, :location, :title

  belongs_to :survey
  has_many :survey_locations
end
