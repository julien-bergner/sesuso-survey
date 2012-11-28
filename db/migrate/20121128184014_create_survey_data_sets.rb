class CreateSurveyDataSets < ActiveRecord::Migration
  def change
    create_table :survey_data_sets do |t|
      t.datetime :start
      t.datetime :end
      t.integer :user_id
      t.integer :survey_location_id

      t.timestamps
    end
  end
end
