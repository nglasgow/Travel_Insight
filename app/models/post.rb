class Post < ActiveRecord::Base
  has_many :comments

  attr_accessible :blog, :title

  validates :blog, :presence => true
  validates :title, :presence => true
end
