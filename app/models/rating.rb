class Rating < ActiveRecord::Base
	belongs_to :rateable, polymorphic: true, :counter_cache => :ratings_count
	belongs_to :user

	validates_presence_of :review, :star
end
