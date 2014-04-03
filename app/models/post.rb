class Post < ActiveRecord::Base
	has_many :reviews
	validates :title, :text, :presence => true
end
