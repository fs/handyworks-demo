class CreateRefferedBies < ActiveRecord::Migration
  def self.up
    create_table :reffered_bies do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :reffered_bies
  end
end
