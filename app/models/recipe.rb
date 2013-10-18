class Recipe < ActiveRecord::Base
	belongs_to :user
	has_many :cupcakes, through: :cakecombos
	has_many :cakecombos

end
