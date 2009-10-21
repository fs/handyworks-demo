class Patient < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email
	validates_presence_of :social_security_number, :birth_date, :sex
	validates_presence_of :address1, :city, :state, :zip, :phone, :account

	validates_numericality_of :account

	ZIP_FORMAT = /^\d{5}(-\d{4})?$/
	ZIP_MESSAGE = 'should be 12345 or 12345-1234'

	PHONE_FORMAT = /^\d{3}-\d{2}-\d{2}$/
	PHONE_MESSAGE = 'should be 123-45-67'

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates_format_of :social_security_number, :with => /^\d{3}[-]?\d{2}[-]?\d{4}$/i, :message => 'should be 123-45-6789'
	validates_format_of :zip, :with => ZIP_FORMAT, :message => ZIP_MESSAGE
	validates_format_of :phone, :with => PHONE_FORMAT, :message => PHONE_MESSAGE

	validates_format_of :work_zip, :with => ZIP_FORMAT, :message => ZIP_MESSAGE, :allow_nil => true, :allow_blank => true
	validates_format_of [ :work_phone, :cell_phone ], :with => PHONE_FORMAT, :message => PHONE_MESSAGE, :allow_nil => true, :allow_blank => true
end