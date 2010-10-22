class AddRegionToPrefectures < ActiveRecord::Migration
  def self.up
    add_column :prefectures, :region_id, :integer
  end

  def self.down
    remove_column :prefectures, :region_id
  end
end
