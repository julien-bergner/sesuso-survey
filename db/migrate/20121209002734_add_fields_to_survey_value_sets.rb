class AddFieldsToSurveyValueSets < ActiveRecord::Migration
  def change
    add_column :survey_value_sets, :value8, :boolean
    add_column :survey_value_sets, :value9, :text
  end
end
