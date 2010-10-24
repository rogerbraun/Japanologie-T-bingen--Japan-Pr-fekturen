class AddPrefectureToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :prefecture_id, :integer
  end

  def self.down
    remove_column :users, :prefecture_id
  end
end
