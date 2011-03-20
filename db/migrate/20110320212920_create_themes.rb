class CreateThemes < ActiveRecord::Migration
  def self.up
    create_table :themes do |t|
      t.string :title, :limit => 32
      t.integer :user_id, :null => false

      t.timestamps
    end
    add_index 'themes', [:title, :user_id]
  end

  def self.down
    drop_table :themes
  end
end
