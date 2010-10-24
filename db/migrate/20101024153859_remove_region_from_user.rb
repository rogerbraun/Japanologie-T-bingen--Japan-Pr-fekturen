class RemoveRegionFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :region_id
  end

  def self.down
    add_column :users, :region_id, :integer
  end
end
