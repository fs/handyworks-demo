require 'active_record/fixtures'

class LoadCategoriesData < ActiveRecord::Migration
  def self.up
		down

		directory = File.dirname(__FILE__)
		Fixtures.create_fixtures(directory + '/dev_data/', 'categories')
  end

  def self.down
		Category.delete_all
  end
end
