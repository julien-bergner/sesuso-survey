class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street, :string
    add_column :users, :street_number, :string
    add_column :users, :zip, :string
    add_column :users, :mobile_phone, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :drivers_license, :boolean
    add_column :users, :bank_account_number, :string
    add_column :users, :bank_identification_code, :string
  end
end
