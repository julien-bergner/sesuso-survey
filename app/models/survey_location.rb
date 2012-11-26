class SurveyLocation < ActiveRecord::Base
  attr_accessible :city, :description, :map_url, :notice, :street, :street_number, :survey_area_id, :title, :url, :zip

  belongs_to :survey_area

end