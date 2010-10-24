class Region < ActiveRecord::Base
  has_many :prefectures
  has_many :users
end
