module RecipesHelper
  WORD_TO_NUMBER = { 
										  'a'    => 1,
										  'an'  => 1,
										  'pair' => 2,
										  'pinch' => 0,
										  'zero'  => 0,
										  'one'   => 1,
										  'two'   => 2,
										  'three' => 3,
										  'four'  => 4,
										  'five'  => 5,
										  'six'   => 6,
										  'seven' => 7,
										  'eight' => 8,
										  'nine'  => 9,
										  'ten'   => 10,
										  'dozen' => 12
										   }
	 OUTLIER_MEASUREMENTS = ["drop", "drops"]

   MEASUREMENT_HASH = {
     cup: ["c.", "c", "cup", "cups"],
     fluid_ounce: ["fl. oz.", "fl oz", "fluid ounce", "fluid ounces"],
     gallon: ["gal", "gal.", "gallon", "gallons"],
     pint: ["pt", "pt.", "pint", "pints"],
     pound: ["lb", "lb.", "pound", "pounds"],
     quart: ["qt", "qt.", "qts", "qts.", "quart", "quarts"],
     tablespoon: ["tbsp.", "tbsp", "T", "T.", "tablespoon", "tablespoons"],
     teaspoon: ["tsp.", "tsp", "t", "t.", "teaspoon", "teaspoons"],
    # metric units
     gram: ["g", "g.", "gr", "gr.", "gram", "grams"],
     kilogram: ["kg", "kg.", "kilogram", "kilograms"],
     liter: ["l", "l.", "liter", "liters"],
     milligram: ["mg", "mg.", "milligram", "milligrams"],
     milliliter: ["ml", "ml.", "milliliter", "milliliters"],
    # independent measures
     pinch: ["pinch"],
     dash: ["dash"],
     sprig: ["sprig", "sprigs"],
     piece: ["piece", "pieces"],
     bag: ["bag", "bags"],
     box: ["box", "boxes"],
     package: ["package", "packages", "pkg.", "pkg"],
     stick: ["stick", "sticks"],
     drop: ["drop", "drops"],
     slice: ["slice", "slices"],
     splash: ["splash"],
     can: ["can", "cans"],
     jar: ["jar", "jars"],
     none: ["none"]
   }
# find the number of ingredients in a components string (we don't need this method)
	def self.ingredient_counter(recipe)
		proportion_itemizer(recipe).length
	end

# #takes component string input and returns an array of line items
	def self.proportion_itemizer(recipe)
		recipe.split("\r\n").map { |item| item.lstrip.rstrip }
	end

  def find_comment(line)
    parenthesis_regex = /\([^\)]+\)/
    parenthesis_regex.match(line).to_s
  end

  def parse(recipe)
  	proportion = Struct.new(:amount, :measure, :ingredient, :comment)
  	collection = []
    IngredientsParser.proportion_itemizer(recipe).each do |line|
	    amount = amount(line) if amount_parser(line)
      measure = measure(line) if find_measurement(line)
			comment = find_comment(line) if find_comment(line)
      ingredient = find_ingredient(line)
   
      collection << proportion.new(amount, measure, ingredient, comment)
    end
    collection
  end

  def amount(line)
  	mixed_fraction_to_float(amount_parser(line))
  end
  def measure(line)
  	measurement_symbol(find_measurement(line))
  end
	def amount_parser(line)
    amount_number_regex = /\s*(\d+ \d+\/\d+|\d+\/\d+|\d+|\d+\.\d+)\s/ 
    if amount_number_regex.match(line)
      amount_number_regex.match(line).to_s.rstrip.lstrip
    elsif self.amount_word_parser(line)
      self.amount_word_parser(line).to_s
    else
      0.0
		end
	end

	#finds the first amount value that is a word in a line
  def amount_word_parser(line)
    array = line.split(" ")
    array.each do |word|
      if WORD_TO_NUMBER.has_key?(word)
        return word
      end
    end
    nil
  end

	  #takes a mixed fraction and turns it into a float
  def mixed_fraction_to_float(fraction)
    return 0 if fraction == 0
    fraction_array = fraction.split(" ")
    if fraction_array.length == 2
      number = fraction_array.first.to_f
      proper = fraction_array.last
      total = number + proper_fraction_to_float(proper)
    elsif fraction_array.length == 1
      if fraction.include?("/")
        total = proper_fraction_to_float(fraction_array.first)
      else
        total = fraction_array.first.to_f
      end
    else
      raise "improper input to mixed_fraction_to_float method"
    end
    total
  end

#takes a proper fraction and converst to a float
  def proper_fraction_to_float(proper_fraction)
    float = proper_fraction.split('/').first.to_f/proper_fraction.split('/').last.to_f
  end

  #takes a line and returns the word matching a measurement
  def find_measurement(line)
    word_regex = /[a-zA-Z]+/
    tablespoon_regex = /T\.?\s/
    return "tablespoon" if tablespoon_regex.match(line)
		line_items = line.downcase.split(" ")
		line_items.each_with_index do |item, index|
			if measurement_symbol(item)
        if OUTLIER_MEASUREMENTS.include?(item)
          word_regex.match(line_items[index - 1]) ? (return 'none'):(return item)
        else
				  return item
        end
      end
		end
    "none"
	end

		#takes a measurement string and converts it to a standardized symbol measure
  def measurement_symbol(measurement_word)
    Array(MEASUREMENT_HASH.find { |k, v| v.include?(measurement_word) }).first
  end

  def find_ingredient(line)
    line.downcase!
    line.slice!(find_measurement(line)) if find_measurement(line) != "none"
    line.slice!(amount_parser(line)) if amount_parser(line) != 0.0
    line.slice!(find_comment(line)) if find_comment(line)
    line.lstrip.rstrip
  end
end