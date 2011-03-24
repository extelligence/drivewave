class AddTotalToMotivation < ActiveRecord::Migration
  def self.up
    add_column :motivations, :total, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :motivations, :total
  end
end
