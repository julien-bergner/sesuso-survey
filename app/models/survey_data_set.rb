class SurveyDataSet < ActiveRecord::Base
  attr_accessible :end, :start, :survey_location_id, :user_id
end
