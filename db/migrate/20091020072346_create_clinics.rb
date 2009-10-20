class CreateClinics < ActiveRecord::Migration
  def self.up
    create_table :clinics do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :clinics
  end
end
