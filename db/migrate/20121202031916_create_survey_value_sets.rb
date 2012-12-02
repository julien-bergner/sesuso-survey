class CreateSurveyValueSets < ActiveRecord::Migration
  def change
    create_table :survey_value_sets do |t|
      t.integer :value1
      t.boolean :value2
      t.boolean :value3
      t.boolean :value4
      t.boolean :value5
      t.boolean :value6
      t.boolean :value7
      t.integer :survey_data_set_id

      t.timestamps
    end
  end
end
