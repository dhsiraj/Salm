class CreateGuests < ActiveRecord::Migration
  def self.up
    create_table :guests do |t|
      t.string :guest_name
      t.string :location
      t.references :agent
      t.string :flight_num
      t.string :airlines
      t.datetime :arr_date
      t.datetime :arr_time

      t.timestamps
    end
  end

  def self.down
    drop_table :guests
  end
end
