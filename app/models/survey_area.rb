class SurveyArea < ActiveRecord::Base
  attr_accessible :description, :location, :title, :survey_id

  validates_presence_of :title
  belongs_to :survey
  has_many :survey_locations
end
