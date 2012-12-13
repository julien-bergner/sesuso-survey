class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :first_name, :last_name, :street, :street_number, :zip, :city, :mobile_phone,
                  :date_of_birth, :drivers_license, :bank_account_number,
                  :bank_identification_code, :email, :password, :password_confirmation, :remember_me

  has_many :survey_data_sets
  has_many :survey_locations, :through => :survey_data_sets
  has_many :survey_areas, :through => :survey_locations
  has_many :surveys, :through => :survey_areas

  def getAffidavitForPDFGeneration(selectedSurveyDataSets)

    ActionView::Base.new(Rails.configuration.paths["app/views"].first).render(
        :partial => 'partials/affidavit_de', :format => :html,
        :locals => {:selectedSurveyDataSets => selectedSurveyDataSets, :user => self}

    )


  end

  def allPersonalDataProvided?
    if  not self.first_name.nil? and self.first_name != "" and
        not self.last_name.nil? and self.last_name != "" and
        not self.street.nil? and self.street != "" and
        not self.street_number.nil? and self.street_number != "" and
        not self.zip.nil? and self.zip != "" and
        not self.date_of_birth.nil? and self.date_of_birth != "" then
      return true
    else
      return false

    end

  end
  
end


