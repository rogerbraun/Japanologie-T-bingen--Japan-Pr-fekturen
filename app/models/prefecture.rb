class Prefecture < ActiveRecord::Base
  belongs_to :region
  has_one :user
end
