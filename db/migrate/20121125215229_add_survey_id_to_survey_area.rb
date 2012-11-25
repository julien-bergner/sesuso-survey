class AddSurveyIdToSurveyArea < ActiveRecord::Migration
  def change
    add_column :survey_areas, :survey_id, :integer
  end
end
