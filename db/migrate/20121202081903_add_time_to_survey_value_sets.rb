class AddTimeToSurveyValueSets < ActiveRecord::Migration
  def change
    add_column :survey_value_sets, :time, :time
  end
end
