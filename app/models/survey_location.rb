class SurveyLocation < ActiveRecord::Base
  acts_as_gmappable

  attr_accessible :city, :description, :map_url, :notice, :street, :street_number, :survey_area_id, :title, :url, :zip

  belongs_to :survey_area
  validates_presence_of :title
  has_many :survey_data_sets

  def gmaps4rails_address
    return_string = ""

    unless self.street.empty?
      return_string << "#{self.street}" << " "
    end
    unless self.street_number.empty?
      return_string << "#{self.street_number}" << " "
    end
    unless self.zip.empty?
      return_string << "#{self.zip}" << " "
    end
    unless self.city.empty?
      return_string << "#{self.city}"
    end

    return return_string
  end

end





