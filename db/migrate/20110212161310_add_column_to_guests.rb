class AddColumnToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :number_of_pax, :integer
    add_column :guests, :number_of_adult, :integer
    add_column :guests, :number_of_child, :integer
    add_column :guests, :arrival_from, :string
    add_column :guests, :departure_date, :datetime
  end

  def self.down
    remove_column :guests, :number_of_pax
    remove_column :guests, :number_of_adult
    remove_column :guests, :number_of_child
    remove_column :guests, :arrival_from
    remove_column :guests, :departure_date
  end
end
