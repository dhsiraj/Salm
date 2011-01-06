class CreateAgents < ActiveRecord::Migration
  def self.up
    create_table :agents do |t|
      t.string :agent_name
      t.string :agent_email
      t.string :location
      t.string :phone
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :agents
  end
end
