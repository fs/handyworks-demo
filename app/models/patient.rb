class Patient < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email
	validates_presence_of :social_security_number, :birth_date, :sex
	validates_presence_of :address1, :city, :state, :zip, :phone
end
