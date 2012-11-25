class AddUserIdToSurveyLocation < ActiveRecord::Migration
  def change
    add_column :survey_locations, :user_id, :integer
  end
end
