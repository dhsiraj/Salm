class CreateAccomodations < ActiveRecord::Migration
  def self.up
    create_table :accomodations do |t|
      t.references :guest
      t.string :location
      t.datetime :checkin
      t.datetime :checkout
      t.references :hotel

      t.timestamps
    end
  end

  def self.down
    drop_table :accomodations
  end
end
