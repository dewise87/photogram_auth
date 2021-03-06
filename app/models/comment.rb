class Comment < ActiveRecord::Base
  validates :user, :presence => true
  validates :photo, :presence => true
  validates :body, :presence => true

  belongs_to :photo
  belongs_to :user
end
