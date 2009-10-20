class Patient < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email, :address1, :city, :state, :zip, :phone,
		:social_security_number, :birth_date, :sex

	belongs_to :category
	belongs_to :clinic
	belongs_to :referred_by
end