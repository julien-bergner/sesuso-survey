class CreateSurveyLocations < ActiveRecord::Migration
  def change
    create_table :survey_locations do |t|
      t.string :title
      t.string :description
      t.text :notice
      t.string :street
      t.string :street_number
      t.string :zip
      t.string :city
      t.string :url
      t.string :map_url
      t.integer :survey_area_id

      t.timestamps
    end
  end
end
