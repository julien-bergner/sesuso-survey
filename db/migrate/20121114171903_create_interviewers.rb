class CreateInterviewers < ActiveRecord::Migration
  def change
    create_table :interviewers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :street_number
      t.string :zip
      t.string :mobile_phone
      t.date :date_of_birth
      t.boolean :drivers_license
      t.string :bank_account_number
      t.string :bank_identification_code

      t.timestamps
    end
  end
end
