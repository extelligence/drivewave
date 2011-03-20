class CreateMotivations < ActiveRecord::Migration
  def self.up
    create_table :motivations do |t|
      t.integer :theme_id, :null => false
      t.integer :user_id, :null => false
      t.integer :energy, :null => false
      t.string :comment

      t.timestamps
    end
    add_index "motivations", [:theme_id, :user_id]
  end

  def self.down
    drop_table :motivations
  end
end
