class Employee < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :designation, :date_of_birth, :sex
end
