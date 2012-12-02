class SurveyValueSet < ActiveRecord::Base
  attr_accessible :survey_data_set_id, :value1, :value2, :value3, :value4, :value5, :value6, :value7

  belongs_to :survey_data_set
  has_one :survey_location, :through => :survey_data_set
  has_one :survey_area, :through => :survey_location
  has_one :survey, :through => :survey_area
end
