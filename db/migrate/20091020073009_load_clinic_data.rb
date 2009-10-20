require 'active_record/fixtures'

class LoadClinicData < ActiveRecord::Migration
  def self.up
		down

		directory = File.dirname(__FILE__)
		Fixtures.create_fixtures(directory + '/dev_data/', 'clinics')
  end

  def self.down
		Clinic.delete_all
  end
end