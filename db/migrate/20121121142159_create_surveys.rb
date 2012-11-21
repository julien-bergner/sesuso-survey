class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :description
      t.string :city
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
