class Review < ActiveRecord::Base
  belongs_to :post
  validates :coment, :presence => true
end
