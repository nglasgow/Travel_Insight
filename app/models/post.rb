class Post < ActiveRecord::Base
  has_many :comments, :dependent => :delete_all

  attr_accessible :blog, :title

  validates :blog, :presence => true
  validates :title, :presence => true
end
