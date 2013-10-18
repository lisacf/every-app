#FIRST CUPCAKE RECIPE FOR SHOW
cupcake_one = Cupcake.create(name: "Vanilla", description: "http://www.marthastewart.com/332268/vanilla-cupcakes", user_id:1, source:"Martha Stewart Living, July 2001")
cupcake_one.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "1 1/2 cups all-purpose flour\n
1 teaspoon baking powder\n
1/2 teaspoon salt\n
8 tablespoons (1 stick) unsalted butter, room temperature\n
1 cup sugar\n
3 large eggs\n
1 1/2 teaspoons pure vanilla extract\n
3/4 cup milk\n
", 
instructions: "STEP 1
Preheat the oven to 350 degrees. Line a cupcake pan with paper liners; set aside.\n
STEP 2
In a medium bowl, sift together flour, baking powder, and salt. In the bowl of an electric mixer fitted with the paddle attachment, cream butter and sugar until light and fluffy. Add eggs, one at a time; scrape down bowl, and beat in vanilla.\n
STEP 3
Add flour mixture and milk alternatively, beginning and ending with flour mixture.\n
STEP 4
Divide batter evenly among liners, about three-quarters full each. Bake until golden and tops spring back to touch, about 20 minutes, rotating pan once if needed. Transfer pans to wire rack; cool completely.", baketemp: 350, baketime:20, cupcake_count:12]

cupcake_one.save

#cupcake 2
cupcake_two = Cupcake.create(name: "Vanilla", description: "http://www.browneyedbaker.com/2010/10/28/vanilla-cupcakes-vanilla-buttercream-frosting/", user_id:1, source:"cake adapted from cook's illustrated\n frosting Brown Eyed Baker")
cupcake_two.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "1 1/2 cups all-purpose flour\n
1 cup granulated sugar\n
1 1/2teaspoons baking powder\n
1/2 teaspoon table salt\n
8 tablespoons unsalted butter (1 stick), room temperature\n
1/2 cup sour cream\n
1 large egg , room temperature\n
2 large egg yolks , room temperature\n
1 1/2 teaspoons vanilla extract\n
", 
instructions: "1. Adjust oven rack to middle position; heat oven to 350 degrees F. 
Line standard muffin/cupcake tin with paper or foil liners.\n\n
2. Whisk together flour, sugar, baking powder, and salt in bowl of standing mixer fitted with paddle attachment. Add butter, sour cream, egg and egg yolks, and vanilla; beat at medium speed until 
smooth and satiny, about 30 seconds. Scrape down sides of bowl with rubber spatula 
and mix by hand until smooth and no flour pockets remain.\n\n
3. Divide batter evenly among cups of prepared tin. Bake until cupcake tops are pale gold
 and toothpick or skewer inserted into center comes out clean, 20 to 24 minutes. 
 Remove the cupcakes from tin and transfer to wire rack; cool cupcakes to room temperature before frosting.", baketemp: 350, baketime:22, preptime:25, cupcake_count:12]

cupcake_two.recipes.build  [recipe_name: "Vanilla Buttercream", cupcake_part: "frosting", user_id: 1, 
ingredients: "1 cup (8 ounces) unsalted butter, at room temperature\n
2 1/2 cups powdered sugar\n
1 tablespoon vanilla extract", 
instructions: "1. Using the wire whisk attachment of your stand mixer, 
whip the butter on medium-high speed for 5 minutes, stopping to scrape the bowl once or twice.\n\n
2. Reduce the speed to low and gradually add the powdered sugar. Once all of the powdered sugar
 is incorporated, increase the speed to medium-high and add the vanilla, mixing until incorporated.
  Whip at medium-high speed until light and fluffy, about 2 minutes, scraping the bowl as needed.\n\n
You can store any unused buttercream in the refrigerator in an airtight container;
 let it come to room temperature and then give it a quick whip in the mixer before using.", preptime:15 ]
cupcake_two.save

#cupcake 3
cupcake_three = Cupcake.create(name: "Magnolia's Vanilla", description: "http://www.foodnetwork.com/recipes/saras-secrets/magnolias-vanilla-cupcake-recipe/index.html", user_id:1, source:"Allysa Torey, More From Magnolia: Recipes from the World-Famous Bakery and Allysa Torey's Home Kitchen, Simon and Schuster, 2004
")
cupcake_three.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "1 1/2 cups self-rising flour\n
1 1/4 cups all-purpose flour\n
1 cup (2 sticks) unsalted butter, softened\n
2 cups sugar\n
4 large eggs, at room temperature\n
1 cup milk\n
1 teaspoon vanilla extract\n
", 
instructions: "Preheat oven to 350 degrees F.\n
Line 2 (1/2 cup-12 capacity) muffin tins with cupcake papers.\n\n

In a small bowl, combine the flours. Set aside.\n\n

In a large bowl, on the medium speed of an electric mixer, 
cream the butter until smooth. Add the sugar gradually and beat until fluffy, 
about 3 minutes. Add the eggs, 1 at a time, beating well after each addition.
 Add the dry ingredients in 3 parts, alternating with the milk and vanilla.  
 With each addition, beat until the ingredients are incorporated but do not over beat.
  Using a rubber spatula, scrape down the batter in the bowl to make sure the ingredients are well blended.
   Carefully spoon the batter into the cupcake liners, filling them about 3/4 full. Bake for 20 to 25 minutes,
    or until a cake tester inserted into the center of the cupcake comes out clean.\n\n

Cool the cupcakes in tins for 15 minutes. Remove from the tins and cool completely on a wire rack before icing.
", baketemp: 350, baketime:22, preptime:5, cupcake_count:24]

cupcake_three.recipes.build  [recipe_name: "Vanilla Buttercream", cupcake_part: "frosting", user_id: 1, 
ingredients: "1 cup (2 sticks) unsalted butter, softened\n
6 to 8 cups confectioners' sugar\n
1/2 cup milk\n
2 teaspoons vanilla extract\n",
instructions: "Place the butter in a large mixing bowl. Add 4 cups of the sugar and then the milk and vanilla. On the medium speed of an electric mixer, beat until smooth and creamy, about 3 to 5 minutes. Gradually add the remaining sugar, 1 cup at a time, beating well after each addition (about 2 minutes), until the icing is thick enough to be of good spreading consistency. You may not need to add all of the sugar. If desired, add a few drops of food coloring and mix thoroughly. (Use and store the icing at room temperature because icing will set if chilled.) Icing can be stored in an airtight container for up to 3 days.
", preptime:15 ]
cupcake_three.save

#cupcake 4
cupcake_four = Cupcake.create(name: "The Perfect Yellow Cupcake", description: "http://www.foodnetwork.com/recipes/gale-gand/the-perfect-yellow-cupcake-recipe/index.html", user_id:1, source:"Gale Gand")
cupcake_four.recipes.build [recipe_name: "Yellow Cake", cupcake_part: "cake", user_id: 1, 
ingredients: "1 cup unsalted butter\n
2 cups sugar\n
1 1/4 teaspoons vanilla extract\n
4 eggs\n
3 cups sifted cake flour\n
1 tablespoon baking powder\n
1/2 teaspoon salt\n
1 cup milk\n
", 
instructions: "Preheat the oven to 350 degrees F.

In a mixer with a whip attachment, cream the butter until light and fluffy. Add the sugar and continue to cream. Gradually add the vanilla and eggs and mix in well. Sift together the dry ingredients; then mix into the butter mixture alternating with the milk. Pour batter into cupcake paper-lined muffin tins filling them 3/4 full. Bake until puffed and firm in the center and light golden brown on top, about 20 to 25 minutes. Let cool. 

", baketemp: 350, baketime:22, preptime:15, cupcake_count:24]

cupcake_four.recipes.build  [recipe_name: "White Buttercream", cupcake_part: "frosting", user_id: 1, 
ingredients: "2 cups sugar\n
1/2 cup water\n
4 egg whites\n
1 pound butter, cut up and softened slightly\n
1 teaspoon almond extract\n", 
instructions: "Put the sugar in a saucepan fitted with a candy thermometer and pour the water down the walls 
of the pan to moisten the sugar without letting sugar crystals wash up on the walls of the pan. Run your finger
 through the center making an X to allow the water to seep into the sugar if it hasn't already. Bring the sugar
  to a boil over high heat and continue cooking to the \"softball\" stage (234 degrees F.).\n\nMeanwhile, in a 
  standing mixer fitted with the whip attachment, whip the egg whites to soft peaks and hold them on low speed 
  until the sugar is ready. When the sugar syrup is has reached the softball stage, turn the mixer up to high
   and slowly pour the syrup down the side of the mixer. Let it continue to whip to cool down. When it's feeling
    somewhat cooled but still a little warm, start adding the butter a few pieces at a time until you have a smooth,
     whipped butter cream. Add the almond extract. Use right away or cover and chill. Re-warm or let sit out to warm 
     up to room temperature to use.
", preptime:120 ]
cupcake_four.save

#cupcake 5
cupcake_five = Cupcake.create(name: "Old-Fashioned Cupcakes", description: "http://www.foodnetwork.com/recipes/old-fashioned-cupcakes-recipe/index.html", user_id:1, source:"Cheryl Day. Paula's Best Dishes")
cupcake_five.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "1 3/4 cups cake flour\n
1 1/4 cups unbleached all-purpose flour\n
2 cups sugar\n
1 tablespoon baking powder\n
3/4 teaspoon salt\n
2 sticks unsalted butter, cut into cubes\n
4 large eggs\n
1 cup whole milk\n
1 teaspoon pure vanilla extract\n
", 
instructions: "Preheat oven to 325 degrees F. Line cupcake pans with paper liners; set aside.

Combine in a bowl both flours, sugar, baking powder and salt. Mix on low speed until combined for about 3 minutes. Add in cubed butter, mixing until just coated with flour.

Add eggs 1 at a time until combined. Slowly add milk and vanilla to batter until completely mixed scraping down the bowl as you mix.

Scoop batter into baking cups filling about 2/3 full. Bake until a cake tester inserted in the center comes out clean, 17 to 20 minutes.
", baketemp: 325, baketime:18, preptime:15, cupcake_count:24]

cupcake_five.recipes.build  [recipe_name: "Old-Fashioned", cupcake_part: "frosting", user_id: 1, 
ingredients: "2 sticks butter, room temperature\n
8 cups confectioners' sugar\n
1/2 cup milk\n
2 teaspoons vanilla extract or other flavoring\n
", 
instructions: "Cream softened butter and add 4 cups sugar, milk and vanilla. Beat with paddle attachment until smooth gradually add the rest of sugar to reach frosting consistency
", preptime:15 ]
cupcake_five.save

#cupcake 6
cupcake_six = Cupcake.create(name: "Vanilla", description: "", user_id:1, source:"")
cupcake_six.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "
", 
instructions: "", baketemp: 350, baketime:22, preptime:35, cupcake_count:12]

cupcake_six.recipes.build  [recipe_name: "Lemonade", cupcake_part: "frosting", user_id: 1, 
ingredients: "", 
instructions: ".", preptime:15 ]
cupcake_six.save

#cupcake 7
cupcake_seven = Cupcake.create(name: "Classic Yellow", description: "http://www.foodnetwork.com/recipes/food-network-kitchens/classic-yellow-cupcakes-with-milk-chocolate-frosting-recipe/index.html
", user_id:1, source:"www.foodnetwork.com")
cupcake_seven.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "1 1/2 cups all-purpose flour\n
1 1/2 teaspoons baking powder\n
1/4 teaspoon fine salt\n
2 large eggs, room temperature\n
2/3 cup sugar\n
3/4 cup unsalted butter, melted\n
2 teaspoons pure vanilla extract\n
1/2 cup milk
", 
instructions: "Preheat the oven to 350 degrees F. Line the muffin tin with cupcake liners.\n\n

Whisk the flour, baking powder, and salt together in a medium bowl.\n\n

In another medium bowl, beat the eggs and sugar with an electric mixer until 
light and foamy, about 2 minutes. While beating, gradually pour in the butter and then the vanilla.\n\n

While mixing slowly, add half the dry ingredients, then add all the milk, and follow 
with the rest of the dry ingredients. Take care not to over mix the batter. Divide the batter
 evenly in the prepared tin (about 1/3 cup batter per cup cake.)\n\n

Bake until a tester inserted in the center of the cakes comes out clean,
 20 to 25 minutes. Cool cupcakes on a rack in the tin for 10 minutes, then remove. Cool on the rack completely.",
  baketemp: 350, baketime:22, preptime:25, cupcake_count:12]

cupcake_seven.recipes.build  [recipe_name: "Milk Chocolate", cupcake_part: "frosting", user_id: 1, 
ingredients: "3 1/2 ounces milk chocolate\n
3 ounces semisweet chocolate\n
2 cups confectioners' sugar, sifted\n
1/4 cup milk\n
1/4 cup (1/2 stick) unsalted butter, softened\n
2 teaspoons pure vanilla extract\n
1/4 teaspoon salt\n
",instructions: "Put the chocolates in a medium heatproof bowl. Bring a saucepan filled with 1 inch or so of water to a very slow simmer; set the bowl over, but not touching, the water. Stir the chocolate occasionally until melted and smooth.
 (Alternatively, put the chocolate in a medium microwave-safe bowl. 
 	Melt at 50 percent power in the microwave until soft, about 1 minute. 
 	Stir, and continue heat until completely melted, about 1 to 2 minutes more.)\n\n

Add the confectioners' sugar, milk, butter, vanilla extract,
 and salt and beat with an electric mixer until smooth and creamy. Divide icing evenly
  between cupcakes and swirl with the back of a spoon or an offset spatula.\n\n
", preptime:15 ]
cupcake_seven.save

#cupcake 8
cupcake_eight = Cupcake.create(name: "Vanilla", description:"http://www.joyofbaking.com/VanillaCupcakes.html", user_id:1, source:"www.joyofbaking.com")
cupcake_eight.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "1/2 cup unsalted butter, room temperature\n

2/3 cup granulated white sugar\n

3 large eggs\n

1 teaspoon pure vanilla extract\n

Zest of 1 large lemon (outer yellow skin)\n

1 1/2 cups all purpose flour\n

1 1/2 teaspoons baking powder\n

1/4 teaspoon salt\n

1/4 cup milk
", 
instructions: "Preheat oven to 350 degrees F and line 12 muffin cups with paper liners.\n\n

In the bowl of your electric mixer, or with a hand mixer, beat the butter and sugar until light and fluffy.
 Add the eggs, one at a time, beating well after each addition. Beat in the vanilla extract.\n\n

In a separate bowl whisk together the lemon zest, flour, baking powder, and salt.\n\n

With the mixer on low speed, alternately add the flour mixture and milk, in three additions,
 beginning and ending with the flour. Scrape down the sides of the bowl as needed.\n\n

Evenly fill the muffin cups with the batter and bake for about 17 - 20 minutes
 or just until set and a toothpick inserted into a cupcake comes out clean. 
 (Always check a few minutes before the stated baking time. Do not over bake or the cupcakes will be dry.) 
 Remove from oven and place on a wire rack to cool. Once the cupcakes have completely cooled, frost with icing.
", baketemp: 350, baketime:18, preptime:35, cupcake_count:12]

cupcake_eight.recipes.build  [recipe_name: "Confectioners (Buttercream)", cupcake_part: "frosting", user_id: 1, 
ingredients: "2 cups confectioners sugar (icing or powdered sugar), sifted\n

1/2 cup unsalted butter, room temperature\n

1 teaspoon pure vanilla extract\n

2 tablespoons milk or light cream\n

Assorted food colors (if desired)", 
instructions: "In an electric mixer, or with a hand mixer, cream the butter until smooth and well blended. Add the vanilla extract. With the mixer on low speed,
 gradually beat in the sugar. Scrape down the sides of the bowl.
  Add the milk and beat on high speed until frosting is light and fluffy (about 3-4 minutes).
   Add a little more milk or sugar, if needed. Tint the frosting with desired food color.", preptime:15 ]
cupcake_eight.save

#cupcake 9
cupcake_nine = Cupcake.create(name: "White", description:"http://www.joyofbaking.com/WhiteCupcakes.html", user_id:1, source:"www.joyofbaking.com")
cupcake_nine.recipes.build [recipe_name: "White", cupcake_part: "cake", user_id: 1, 
ingredients: "2 large eggs\n

1 3/4 cups sifted cake flour\n

2 teaspoons baking powder\n

1/4 teaspoon salt\n

1/2 cup  unsalted butter, at room temperature\n

1 cup granulated white sugar, divided\n

1 teaspoon pure vanilla extract\n

1/2 cup milk\n

1/8 teaspoon cream of tartar
", 
instructions: "Preheat oven to 350 degrees F (177 degrees C) and lightly butter or line 12 muffin cups with paper liners.

While eggs are still cold separate the eggs, placing the yolks in one bowl and the whites in another bowl. Cover the two bowls with plastic wrap and allow the eggs to come to room temperature before using (about 30 minutes).

In a mixing bowl sift or whisk together the flour, baking powder, and salt. Set aside.

In the bowl of your electric mixer, or with a hand mixer, beat the butter until soft (about 1-2 minutes). Add 3/4 cup (150 grams) of the sugar and beat until light and fluffy (about 2-3 minutes). Scrape down the sides of the bowl. Add egg yolks, one at a time, beating well after each addition. Scrape down the sides of the bowl. Beat in the vanilla extract. Then, with the mixer on low speed, alternately add the flour mixture and milk, in three additions, beginning and ending with the flour.  

In a clean bowl of your electric mixer, with the whisk attachment, (or with a hand mixer) beat the egg whites until foamy. Add the cream of tartar and continue beating until soft peaks form. Gradually add the remaining 1/4 cup (50 grams) of sugar and continue to beat until stiff peaks form. With a rubber spatula gently fold a little of the whites into the batter to lighten it, and then fold in the remaining whites until combined. Do not over mix the batter or it will deflate.

Evenly fill the 12 muffin cups with the batter and bake for about 18 - 20 minutes or until nicely browned and a toothpick inserted into a cupcake comes out clean. Remove from oven and place on a wire rack to cool completely. With a knife or offset spatula, spread frosting on each cupcake. If you want to pipe the frosting, I often use a large Wilton 1M (open or closed) star or a large plain decorating tip. Garnish with colored sprinkles. These cupcakes are best served the same day, but they can be stored at room temperature for a few days.
", baketemp: 350, baketime:19, preptime:35, cupcake_count:12]

cupcake_nine.recipes.build  [recipe_name: "Butter", cupcake_part: "frosting", user_id: 1, 
ingredients: "2 cups confectioners sugar (icing or powdered sugar), sifted\n

1/2 cup unsalted butter, room temperature\n

1 teaspoon pure vanilla extract\n
2-3 tablespoons milk or light cream\n

Assorted food colors (if desired)\n
", 
instructions: "In an electric mixer, or with a hand mixer, cream the butter until smooth and well blended. Add the vanilla extract. With the mixer on low speed, gradually beat in the sugar. Scrape down the sides of the bowl. Add the milk and beat on high speed until frosting is light and fluffy (about 5 minutes). Tint the frosting with desired food color
", preptime:15 ]

cupcake_nine.save

#cupcake 10
cupcake_ten = Cupcake.create(name: "Vanilla", description: "", user_id:1, source:"")
cupcake_ten.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "
", 
instructions: "", baketemp: 350, baketime:22, preptime:35, cupcake_count:12]

cupcake_ten.recipes.build  [recipe_name: "Lemonade", cupcake_part: "frosting", user_id: 1, 
ingredients: "", 
instructions: ".", preptime:15 ]
cupcake_ten.save

#cupcake 11
cupcake_eleven = Cupcake.create(name: "Vanilla", description: "", user_id:1, source:"")
cupcake_eleven.recipes.build [recipe_name: "Vanilla", cupcake_part: "cake", user_id: 1, 
ingredients: "
", 
instructions: "", baketemp: 350, baketime:22, preptime:35, cupcake_count:12]

cupcake_eleven.recipes.build  [recipe_name: "Lemonade", cupcake_part: "frosting", user_id: 1, 
ingredients: "", 
instructions: ".", preptime:15 ]

cupcake_eleven.save

