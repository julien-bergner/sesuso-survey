class SurveyValueSet < ActiveRecord::Base
  attr_accessible :survey_data_set_id, :value1, :value2, :value3, :value4, :value5, :value6, :value7

  belongs_to :survey_data_set
end
