class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :first_name, :last_name, :street, :street_number, :zip, :mobile_phone,
                  :date_of_birth, :drivers_license, :bank_account_number,
                  :bank_identification_code, :email, :password, :password_confirmation, :remember_me
  
end


