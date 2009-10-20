require 'active_record/fixtures'

class LoadReferredByData < ActiveRecord::Migration
  def self.up
		down

		directory = File.dirname(__FILE__)
		Fixtures.create_fixtures(directory + '/dev_data/', 'reffered_bies')
  end

  def self.down
		RefferedBy.delete_all
  end
end