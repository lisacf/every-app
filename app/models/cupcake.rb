class Cupcake < ActiveRecord::Base
	belongs_to :user
	has_many :recipes, :through => :cakecombos
	has_many :cakecombos
	has_many :ratings, as: :rateable
	has_many :reviews, as: :reviewable
	has_many :photos, as: :photoable

	validates_presence_of :name, :source, :description
	validates :description, length: { maximum: 200 }
	validates :name, length: { maximum: 40 }

	accepts_nested_attributes_for :recipes, :allow_destroy => true
end
