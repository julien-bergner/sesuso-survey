class CreateSurveyAreas < ActiveRecord::Migration
  def change
    create_table :survey_areas do |t|
      t.string :title
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
