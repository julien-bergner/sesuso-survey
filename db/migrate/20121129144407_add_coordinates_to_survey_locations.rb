class AddCoordinatesToSurveyLocations < ActiveRecord::Migration
  def change
    add_column :survey_locations, :latitude, :float
    add_column :survey_locations, :longitude, :float
    add_column :survey_locations, :gmaps, :boolean
  end
end
