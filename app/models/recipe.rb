class Recipe < ActiveRecord::Base
	# before_save :create_proportions
	belongs_to :user
  belongs_to :category
  has_many :proportions
  has_many :ingredients, through: :proportions
  has_many :photos, as: :photoable
  has_many :ratings, as: :rateable
  validates_uniqueness_of :name
  validates_presence_of  :name, :components
  accepts_nested_attributes_for :proportions, :allow_destroy => true
  accepts_nested_attributes_for :ingredients



#the before save call that creates the proportions from the components
  # def create_proportions
  #   proportion_itemizer.each do |line|
  #     proportion = self.proportions.build
  #     if amount_parser(line)
  #       proportion.amount = mixed_fraction_to_float(amount_parser(line))
  #     end
  #     if find_measurement(line)
  #       proportion.measure = measurement_symbol(find_measurement(line))
  #     end
  #     if find_comment(line)
  #       proportion.comment = find_comment(line)
  #     end
  #     line_ingredient = find_ingredient(line)
  #     db_ingredient = Ingredient.find_by_name(line_ingredient)
  #     if db_ingredient
  #       proportion.ingredient_id = db_ingredient.id
  #     else
  #       proportion.ingredient = Ingredient.create!(name: line_ingredient)
  #     end
  #     proportion.save
  #   end
  # end

end
