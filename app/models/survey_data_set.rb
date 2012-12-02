class SurveyDataSet < ActiveRecord::Base
  attr_accessible :end, :start, :survey_location_id, :user_id

  belongs_to :survey_location
  has_one :survey_value_set
end
