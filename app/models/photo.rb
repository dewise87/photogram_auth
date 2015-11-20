class Photo < ActiveRecord::Base
  validates :user_id, :presence => true

  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  belongs_to :user
  has_many :fans, :through => :likes, :source => :user
end
