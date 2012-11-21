class Survey < ActiveRecord::Base
  attr_accessible :city, :description, :end_date, :start_date, :title
end
