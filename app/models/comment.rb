class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :description, :title

  validates :title, :presence => true
  validates :description, :presence => true
end
