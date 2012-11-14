class Interviewer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :bank_account_number, :bank_identification_code, :date_of_birth, :drivers_license, :email, :first_name, :last_name, :mobile_phone, :street, :street_number, :zip
end
