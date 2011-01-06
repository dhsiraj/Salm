class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.string :hotel_name
      t.string :location
      t.string :email
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :hotels
  end
end
