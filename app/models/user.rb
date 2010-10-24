class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :prefecture_id

  validates :email, :format => {:with => /.*uni-tuebingen.de/, :on => :create}
  validates :prefecture_id, :presence => true
  belongs_to :prefecture
end
