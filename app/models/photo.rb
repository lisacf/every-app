class Photo < ActiveRecord::Base
	belongs_to :photoable, polymorphic: true
	belongs_to :user
end
