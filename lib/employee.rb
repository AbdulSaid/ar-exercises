class Employee < ActiveRecord::Base
  validate :first_name
  validate :last_name
  validates :hourly_rate, :inclusion => 40..200
  validate :store_id

  belongs_to :store 

  

end
