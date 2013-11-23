# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# FIRST CUPCAKE RECIPE FOR SHOW
cupcake_one = Cupcake.create(name: "Lemon", description: "A light, fluffy cake with zesty lemon flavor.  Topped with icing that tastes like a glass of lemonade.", 
	source: "Cake adapted from Barefoot Contessa Parties! -Lemon Cake.\n Icing adapted from AllRecipes -Lemon Icing")
cupcake_one.recipes.build [name: "Zesty Lemon", cupcake_part: "cake", user_id: 1, 
components: "1 stick unsalted butter\n
1 cup granulated sugar\n
2 extra-large eggs\n 
3 Tbsp grated lemon zest (3 to 4 large lemons)\n
1 1/2 cups cake flour\n
1/4 teaspoon baking powder\n
1/4 teaspoon baking soda\n
1/2 teaspoon salt\n
3 Tbsp freshly squeezed lemon juice\n
1/3 cup buttermilk\n
1 teaspoon pure vanilla extract
", 
instructions: "Preheat oven. Line a cupcake tin with 12 liners.\n\n
Bring butter, eggs and buttermilk to room temperature.  
Zest 3 to 4 large lemons to make approximately 3 tablespoons of fine lemon zest.  Squeeze the lemons into a bowl to generate the lemon juice required for the cake and set aside for the frosting.\n\n

Cream the butter and granulated sugar until light and fluffy.  I use an electric mixer at medium speed.  Add the eggs and the lemon zest and continue to mix until well incorporated.\n\n

Sift the flour, baking powder, baking soda, and salt into a bowl. In a separate bowl combine the lemon juice, buttermilk, and vanilla. Add the flour and buttermilk mixtures alternately to the batter (butter and sugar mixture), beginning and ending with the flour. \n\n

Fill each cupcake liner three quarters of the way to the top.  The mixture will make between 12 and 14 cupcakes.  Bake at 350 degrees F for 22 to 25 minutes or until a toothpick comes out clean.", baketemp: 350, baketime:22, preptime:35, cupcake_count:12]

cupcake_one.recipes.build  [name: "Lemonade", cupcake_part: "frosting", user_id: 1, 
components: "1 stick unsalted butter\n
3 cups confectioner\'s sugar\n
2 tablespoon freshly squeezed lemon juice\n
1/2 teaspoon pure vanilla extract", 
instructions: "Bring the butter to room temperature.\n With a mixer beat the butter with lemon juice and vanilla then add confectioner's
 sugar and beat until light and fluffy. Add more sugar or lemon juice to adjust the consistency as needed.", preptime:15 ]
# cupcake_one.ratings.build [star:5, review:"Easy to make.  Light and fluffy with serious lemon flavor.  
# 	The icing looks beautiful and tastes like sweet lemonade.", user_id:1]
# cupcake_one.average_rating = 5.0
cupcake_one.save

cupcake_two = Cupcake.create(name: "Margarita", description: "A party in your mouth.  A zesty, lime cupcake topped with a fresh margarita.", 
	source: "Cake and icing created at everycupcake.com")
cupcake_two.recipes.build [name: "Lime", cupcake_part: "cake", user_id: 1, 
components: "1 stick unsalted butter\n
1 cup granulated sugar\n
2 extra-large eggs\n 
3 Tbsp grated lime zest (5 to 6 limes)\n
1 1/2 cups cake flour\n
1/4 teaspoon baking powder\n
1/4 teaspoon baking soda\n
1/2 teaspoon salt\n
3 Tbsp freshly squeezed lime juice\n
1/3 cup buttermilk\n
1 teaspoon pure vanilla extract
", 
instructions: "Preheat oven. Line a cupcake tin with 12 liners.\n\n
Bring butter, eggs and buttermilk to room temperature.  
Zest 5 to 6 limes to make approximately 3 tablespoons of lime zest.  Squeeze the limes into a bowl to generate the lime juice required for the cake and set aside for the frosting.\n\n

Cream the butter and granulated sugar until light and fluffy.  I use an electric mixer at medium speed.  Add the eggs and the lime zest and continue to mix until well incorporated.\n\n

Sift the flour, baking powder, baking soda, and salt into a bowl. In a separate bowl combine the lime juice, buttermilk, and vanilla. Add the flour and buttermilk mixtures alternately to the batter (butter and sugar mixture), beginning and ending with the flour. \n\n

Fill each cupcake liner three quarters of the way to the top.  The mixture will make between 12 and 14 cupcakes.  Bake at 350 degrees F for 22 to 25 minutes or until a toothpick comes out clean.
", baketemp: 350, baketime:22, preptime:35, cupcake_count:12]
cupcake_two.recipes.build  [name: "Margarita", cupcake_part: "frosting", user_id: 1, 
components: "1 stick unsalted butter\n
4 cups confectioner\'s sugar\n
2 tablespoons freshly squeezed lime juice\n
2 tablespoons Tequila\n
1/2 teaspoon pure vanilla extract", 
instructions: "Bring the butter to room temperature.\n With a mixer beat the butter with lime juice, tequila, 
and vanilla then add confectioner\'s sugar and beat until light and fluffy. 
Add more confectioner\'s sugar or liquid (lime or tequila) to adjust the consistency as needed.", preptime:15]
cupcake_two.save

cupcake_three = Cupcake.create(name: "Chocolate", description: "Rich chocolate cake.  Simple to make and eat.", 
	source: "Vegan Chocolate Cake - allrecipes.com\n Vegan chocolate icing from allrecipe reviewer KADart05")
cupcake_three.recipes.build [name: "Vegan Chocolate", cupcake_part: "cake", user_id: 1, 
components: "1 1/2 cups all-purpose\n
1 cup sugar\n
1/4 cup cocoa powder\n
1 teaspoon baking soda\n
1/2 teaspoon salt\n
1/3 cup vegetable oil\n
1 teaspoon pure vanilla extract\n
1 teaspoon distilled white vinegar\n
1 cup water
", 
instructions: "1. Preheat oven to 350 degrees F. Line a cupcake tin with 12 liners.\n\n 
2. Sift together the flour, sugar, cocoa, baking soda and salt.  Add the oil, vanilla, vinegar and water.  Mix together until smooth.\n\n
3. Pour into cupcake liners and bake at 350 degrees F for 22 minutes.
 ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

cupcake_three.recipes.build  [name: "Chocolate Faux-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
components: "1/2 cup margarine\n
3 cups confectioner\'s sugar\n
1/4 cup cocoa powder\n
1/2 teaspoon pure vanilla extract\n 
2 tablespoons rice or soy milk",
instructions: "Bring the margarine to room temperature.\n With a mixer beat the margarine, confectioner\'s sugar, 
cocoa powder, rice or soy milk and vanilla.  Beat frosting until light and fluffy.", preptime:15]
cupcake_three.save


cupcake_four = Cupcake.create(name: "Mocha Khalua", description: "Chocolate and coffee blend together to create a super rich cupcake.
  Khalua spiked icing makes for the perfect topper.", 
	source: "everycupcake.com")

cupcake_four.recipes.build [name: "Mocha", cupcake_part: "cake", user_id: 1, 
components: "1 3/4 cups cake flour\n
1 cup sugar\n
1/4 cup cocoa powder\n
1 teaspoon baking soda\n
3 teaspoons instant coffee\n
1/2 teaspoon salt\n
1/3 cup vegetable oil\n
1 teaspoon pure vanilla extract\n
1 teaspoon distilled white vinegar\n
1 cup hot water
", 
instructions: "1. Preheat oven to 350 degrees F. Line a cupcake tin with 12 liners.\n\n 
2. Sift together the flour, sugar, cocoa, baking soda and salt.\n\n
3. Brew the instant coffee by adding the powder to hot water.\n\n
4. Add the oil, vanilla, vinegar and coffee to the dry ingredients.  Mix together until smooth.\n\n
3. Pour into cupcake liners and bake at 350 degrees F for 22 minutes.
 ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

cupcake_four.recipes.build  [name: "Kahlua Faux-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
components: "1/2 cup margarine\n
3 cups confectioner\'s sugar\n
1/4 cup cocoa powder\n
1/2 teaspoon pure vanilla extract\n 
2 tablespoons Khalua",
instructions: "Bring the margarine to room temperature.\n With a mixer beat the margarine, confectioner\'s sugar, 
cocoa powder, Khalua and vanilla.  Beat frosting until light and fluffy.", preptime:15]
cupcake_four.save

cupcake_five = Cupcake.create(name: "123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890", description: "A classic party cake that can be iced with colorful frosting. Egg whites give
	this cake the characteristic color.", 
	source: "white layer cake & vanilla-butter-cream, adapted from Baking Illustrated")

cupcake_five.recipes.build [name: "Vanilla", cupcake_part: "cake", user_id: 1, 
components: "2 1/4 cups cake flour\n
1 cup milk\n
6 large egg whites\n
2 teaspoons vanilla extract\n
1 3/4 cups granulated sugar\n
4 teaspoons baking powder\n
1 teaspoon salt\n
12 tablespoons unsalted butter\n
", 
instructions: "1. Preheat the oven to 350 degrees F.  Bring the milk, butter and eggs to room temperature.\n\n
2. Pour the milk, egg whites, and vanilla extract into a 2-cup measuring cup and mix with a fork until blended.\n\n
3. Mix the flour, sugar, baking powder and salt in a large mixing bowl.  Add the butter and mix at low speed until the mixture resembles moist crumbs.\n\n
4. Add half of the liquid mixture to the crumbs and beat at medium speed(or high speed) for 1 1/2 minutes. Add the remaining liquid mixture and beat for 30 seconds more.
Stop the mixer and scrape the sides of the bowl.  Beat for 20 seconds longer.\n\n
5. Line a cupcake pan with liners and fill each liner 3/4 full.\n\n
6. Bake at 350 degrees F for 22 to 26 minutes or until a toothpick inserted into the center of the cake comes out clean.
 ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

cupcake_five.recipes.build  [name: "Vanilla-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
components: "4 large eggs\n
1 cup sugar\n
2 teaspoons vanilla extract\n
pinch salt\n
4 sticks unsalted butter",
instructions: "1. Allow butter to soften but use when still cool.  Cut each stick into quarters.\n\n2. Combine the eggs, sugar, vanilla, and salt in a bowl.  Place the bowl over a pan of simmering water.  
Do not let the bowl touch the hot water.  Whisk gently and consistently until thin and foamy and registers 160 degrees on an instant-read thermometer\n\n3. Beat the egg mixture at medium-high speed until light, airy, and cooled to room temperature, about 5 minutes.\n\n4. Reduce the speed to medium and add the butter, one piece at a time.  Once all the butter is added, increase the speed to high and beat
 one minute until light, fluffy and thoroughly combined.", preptime:30]
cupcake_five.save

# cupcake_six = Cupcake.create(name: "Coconut", description: "", 
# 	source: "everycupcake.com")

# cupcake_six.recipes.build [name: "Mocha", cupcake_part: "cake", user_id: 1, 
# components: "

# ", 
# instructions: "
#  ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

# cupcake_six.recipes.build  [name: "Vanilla-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
# components: "",
# instructions: "", preptime:15]
# cupcake_six.save

# cupcake_seven = Cupcake.create(name: "Vanilla", description: "", 
# 	source: "everycupcake.com")

# cupcake_seven.recipes.build [name: "Mocha", cupcake_part: "cake", user_id: 1, 
# components: "

# ", 
# instructions: "
#  ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

# cupcake_seven.recipes.build  [name: "Vanilla-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
# components: "",
# instructions: "", preptime:15]
# cupcake_seven.save

# cupcake_eight = Cupcake.create(name: "Vanilla", description: "", 
# 	source: "everycupcake.com")

# cupcake_eight.recipes.build [name: "Mocha", cupcake_part: "cake", user_id: 1, 
# components: "

# ", 
# instructions: "
#  ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

# cupcake_eight.recipes.build  [name: "Vanilla-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
# components: "",
# instructions: "", preptime:15]
# cupcake_eight.save

# cupcake_nine = Cupcake.create(name: "Vanilla", description: "", 
# 	source: "everycupcake.com")

# cupcake_nine.recipes.build [name: "Mocha", cupcake_part: "cake", user_id: 1, 
# components: "

# ", 
# instructions: "
#  ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

# cupcake_nine.recipes.build  [name: "Vanilla-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
# components: "",
# instructions: "", preptime:15]
# cupcake_nine.save

# cupcake_ten = Cupcake.create(name: "Vanilla", description: "", 
# 	source: "everycupcake.com")

# cupcake_ten.recipes.build [name: "Mocha", cupcake_part: "cake", user_id: 1, 
# components: "

# ", 
# instructions: "
#  ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

# cupcake_ten.recipes.build  [name: "Vanilla-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
# components: "",
# instructions: "", preptime:15]
# cupcake_ten.save

# cupcake_eleven = Cupcake.create(name: "Vanilla", description: "", 
# 	source: "everycupcake.com")

# cupcake_eleven.recipes.build [name: "Mocha", cupcake_part: "cake", user_id: 1, 
# components: "

# ", 
# instructions: "
#  ", baketemp: 350, baketime:22, preptime:15, cupcake_count:12]

# cupcake_eleven.recipes.build  [name: "Vanilla-Butter-Cream", cupcake_part: "frosting", user_id: 1, 
# components: "",
# instructions: "", preptime:15]
# cupcake_eleven.save



