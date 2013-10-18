module RecipesHelper
	def ingredient_parser(string)
		ingredient_regex = %r{
      (?<amount> .?\d+(\.\d+)? ) {0}
      (?<fraction> \d\/\d ) {0}

      (?<container_amount> \d+(\.\d+)?) {0}
      (?<container_unit> .+) {0}
      (?<container_size> \(\g<container_amount>\s\g<container_unit>\)) {0}
      (?<unit_and_ingredient> .+ ) {0}

      (\g<fraction>\s)?(\g<amount>\s?)?(\g<fraction>\s)?(\g<container_size>\s)?\g<unit_and_ingredient>
    }x
		
		results = ingredient_regex.match(string)
		@ingredient_string = results[:unit_and_ingredient]
		@container_amount = results[:container_amount]
		@container_unit = results[:container_unit]
	end
end