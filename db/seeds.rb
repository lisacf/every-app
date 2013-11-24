# encoding: utf-8
#FIRST CUPCAKE RECIPE FOR SHOW top line required to import degree sign
category = Category.create(name: "vanilla")
category.save


vanilla1 = Recipe.create(name: "Mini Vanilla Cupcakes", source:"http://www.epicurious.com/recipes/food/views/Mini-Vanilla-Cupcakes-109045",
 cupcake_part:"cake", components:"1 cup all-purpose flour\r\n1 teaspoon baking powder\r\n1/4 teaspoon salt\r\n1/3 cup whole milk\r\n1/2 teaspoon vanilla\r\n3/4 stick (6 tablespoons) unsalted butter, softened\r\n1/2 cup plus 1 tablespoon sugar\r\n1 large egg\r\n", 
 instructions:"Put oven rack in middle position and preheat oven to 350 degrees F. Line muffin cups with liners.\r\nWhisk together flour, baking powder, and salt in a bowl. Stir together milk and vanilla in a small bowl.\r\nBeat together butter and sugar in a large bowl
 with an electric mixer at medium-high speed until pale and fluffy, about 4 minutes. Add egg and beat until just combined. Reduce speed to low, then add flour and milk mixtures alternately in batches, beginning and ending with flour and mixing until just combined.\r\n
 Divide batter among muffin cups, filling them two-thirds full, and bake until tops are pale golden and a wooden pick or skewer inserted in centers comes out clean, about 15 minutes. Invert cupcakes onto a rack and cool completely.", 
 baketemp: 350, baketime:"about 15", cupcake_count: 24, category_id:1, user_id: 1)
vanilla1.save
Photo.create!(remote_image_url:"http://www.epicurious.com/images/recipesmenus/2004/2004_january/109045.jpg", photoable_id: 1, photoable_type: "Recipe")

vanilla2 = Recipe.create(name: "Vanilla Cupcakes", cupcake_part: "cake", source: "http://www.marthastewart.com/256334/vanilla-cupcakes", components:"3 cups all-purpose flour\r\n1 1/2 teaspoons baking powder\r\n3/4 teaspoon salt\r\n12 tablespoons unsalted butter, room temperature (1 1/2 sticks)\r\n1 1/2 cups sugar\r\n4 large eggs\r\n
  2 teaspoons pure vanilla extract\r\n1 1/4 cups milk", instructions:"STEP 1\r\nHeat oven to 350°F. Line cupcake pan with paper liners; set aside. In a medium mixing bowl, whisk together flour, baking powder, and salt. In another mixing bowl, cream the butter and sugar until light and fluffy, about 4 minutes.
   Add eggs one at a time, mixing until incorporated and scraping down sides of bowl, beat in vanilla.\r\nSTEP 2\r\nAdd flour mixture and milk alternately, beginning and ending with flour. Scrape the sides and bottom of bowl to assure the batter is thoroughly mixed. Divide batter evenly among liners, filling papers 
   about 2/3 full. Bake on the center rack of the oven until tops spring back to touch, about 20 minutes. Transfer to a wire rack to cool completely.", 
   baketemp:350, baketime:"about 20", cupcake_count: 24, category_id:1, user_id: 1)
vanilla2.save
Photo.create!(remote_image_url:"http://www.marthastewart.com/sites/files/marthastewart.com/imagecache/wmax-520/ed_1005_vanillacupcakes_vert.jpg", photoable_id: 2, photoable_type: "Recipe")

vanilla3 = Recipe.create(name: "bonappetit Vanilla ", cupcake_part: "cake", source: "http://www.bonappetit.com/recipe/vanilla-cupcakes", 
 components:"10 tablespoons (1 1/4 sticks) unsalted butter, room temperature\r\n3/4 cup sugar\r\n2 large eggs, room temperature\r\n1
  teaspoon vanilla extract\r\n1 cup plus 3 tablespoons self-rising flour\r\n2 tablespoons whole milk",
 instructions:"Preheat oven to 350°F. Line 8 standard (1/3-cup) muffin cups with paper liners. Using electric mixer, beat butter and sugar in medium bowl until fluffy.
  Add eggs, 1 at a time, beating well after each addition. Beat in vanilla. Mix in flour, then milk. Divide batter among prepared cups 
  (about 1/3 cup for each). Bake until golden brown and tester inserted into center comes out clean, about 23 minutes. 
  Transfer cupcakes to rack and cool completely.", 
   baketemp:350, baketime:"about 23", cupcake_count: 8, category_id: 1, user_id: 1)
vanilla3.save
Photo.create!(remote_image_url:"http://www.bonappetit.com/wp-content/uploads/2008/04/vanilla-cupcakes.jpg", photoable_id: 3, photoable_type: "Recipe")

vanilla4 = Recipe.create(name: "BBC Vanilla Cupcake", cupcake_part: "cake", source: "http://www.bbc.co.uk/food/recipes/cupcakes_93722", 
 components:"110g butter or margarine, softened at room temperature\r\n110g caster sugar\r\n2 free-range eggs, lightly beaten\r\n1 tsp vanilla extract\r\n110g self-raising flour\r\n1-2 tbsp milk",
 instructions:"1. Preheat the oven to 180°C/350°F/Gas 4 and line a 12-hole muffin tin with paper cases.\r\n2. Cream the butter and sugar together in a bowl until pale. Beat in the eggs a little at
  a time and stir in the vanilla extract.\r\n3. Fold in the flour using a large metal spoon, adding a little milk until the mixture is of a dropping consistency. Spoon the mixture into 
  the paper cases until they are half full.\r\n4. Bake in the oven for 10-15 minutes, or until golden-brown on top and a skewer inserted into one of the cakes comes out clean. Set aside to cool for 10 minutes,
   then remove from the tin and cool on a wire rack.\r\n", 
   baketemp:350, baketime:"10 to 15", cupcake_count: 12, category_id: 1, user_id: 1)
vanilla4.save
Photo.create!(remote_image_url:"http://ichef.bbci.co.uk/food/ic/food_16x9_448/recipes/cupcakes_93722_16x9.jpg", photoable_id: 4, photoable_type: "Recipe")

vanilla5 = Recipe.create(name: "Gluten-Free Vanilla", cupcake_part: "cake", source: "http://www.tarteletteblog.com/2010/06/recipe-gluten-free-lemon-vanilla.html", 
 components:"1 cup superfine sweet rice flour\r\n1 cup millet flour\r\n1/2 cup sorghum flour\r\n1/2 cup cornstarch\r\n1/2 teaspoon xanthan gum\r\n2 teaspoons baking powder\r\n1/4 teaspoon salt\r\n6
  tablespoons unsalted butter, at room temperature\r\n6 tablespoons coconut oil (solid stage preferably)\r\n2 1/2 cups sugar, divided\r\n1 teaspoon vanilla extract\r\n1 1/4 cups milk\r\n6 egg whites",
 instructions:"Preheat the oven to 350°F. Lightly butter 24 cupcake liners.\r\nSift together all the flours, cornstarch, gum, baking powder and salt. Reserve.\r\nIn a stand mixer fitted with the paddle 
 attachment, beat the butter, coconut oil and 1 cup sugar at medium speed until pale and thick. Add the vanilla, then the dry ingredients in 3 additions, alternating with the milk. Transfer the batter to 
 a separate bowl and wash your stand mixer bowl very well.\r\nIn that clean bowl, whip the egg whites to a foam at medium speed. Increase the speed and slowly add the remaining 1 1/2 cups sugar, 1/4 cup at a time,
  until you get a glossy and firm meringue with stiff peaks.\r\nFold 1/3 of the whites into the flour batter to lighten it and then fold in the rest carefully not to deflate the meringue completely.\r\nDivide in between the prepared cupcake liners and bake for 20 minutes.", 
   baketemp:350, baketime:"20", cupcake_count: 24, category_id: 1, user_id: 1)
vanilla5.save
Photo.create!(remote_image_url: "http://farm5.static.flickr.com/4043/4707118076_afc68baf51_b.jpg", photoable_id: 5, photoable_type: "Recipe")
Photo.create!(remote_image_url: "http://farm2.static.flickr.com/1302/4706477513_cdaf8e72d8_b.jpg", photoable_id: 5, photoable_type: "Recipe")

vanilla6 = Recipe.create(name: "Showgirl", cupcake_part: "cake", source: "http://www.davidlebovitz.com/2009/03/showgirl-cupcakes/", 
 components:"4 ounces, 8 tablespoon (125g) butter, salted or unsalted, at room temperature\r\n2/3 cup (140g) sugar\r\n2 large eggs, at room temperature\r\n3/4 cup plus 2 tablespoons (125g)
  self-rising flour\r\n½ teaspoon vanilla extract\r\n3 tablespoons whole milk" ,
 instructions:"1. Preheat oven to 350°F (180°C.) Line a 12-cup muffin tin with paper cupcake liners.\r\n\r\n2. Beat the butter with the sugar until smooth and creamy. Add eggs one at a time, beating well,
  then mix in the vanilla.\r\n\r\n3. Gradually sift in the flour, folding as you go.\r\n\r\n4. Add milk. Beat well.\r\n\r\n5. Pour mixture into cupcake papers. Bake 15-20 minutes.\r\n\r\n6. Use baking time to lick bowl clean." , 
   baketemp:350, baketime:"15-20", cupcake_count: 12, category_id: 1, user_id: 1)
vanilla6.save
Photo.create!(remote_image_url: "http://farm4.static.flickr.com/3352/3310028556_2ea20f01cf_o.jpg", photoable_id: 6, photoable_type: "Recipe" )

vanilla7 = Recipe.create(name: "Babycakes Vanilla Cupcake Vegan GF", cupcake_part: "cake", source: "http://www.epicurious.com/recipes/food/views/Vanilla-Cupcakes-353909", 
 components:"2 cups garbanzo–fava bean flour\r\n1 cup potato starch\r\n½ cup arrowroot\r\n1 tablespoon plus 1 ½ teaspoons baking powder\r\n½ teaspoon baking soda\r\n1 teaspoon xanthan gum\r\n2
  teaspoons salt\r\n2/3 cup coconut oil\r\n1 1/3 cups agave nectar\r\n¾ cup homemade applesauce or store‑bought unsweetened applesauce\r\n3 tablespoons pure vanilla extract\r\ngrated zest of 1 lemon\r\n1 cup hot water" ,
 instructions:"Preheat the oven to 325°F. Line 2 standard 12-cup muffin tins with paper liners.\r\nIn a medium bowl, whisk together the flour, potato starch, arrowroot, baking powder, baking soda, xanthan gum, and salt.
  Add the oil, agave nectar, applesauce, vanilla, and lemon zest to the dry ingredients and combine. Stir in the hot water and mix until the batter is smooth.\r\nPour 1/3 cup batter into each prepared cup, almost filling it.
   Bake the cupcakes on the center rack for 22 minutes, rotating the tins 180 degrees after 15 minutes. The finished cupcakes will be golden brown and will bounce back when pressure is applied gently to the center.\r\nLet 
   the cupcakes stand in the tins for 20 minutes, then transfer them to a wire rack and cool completely. Using a frosting knife, gently spread 1 tablespoon vanilla frosting over each cupcake. Store the cupcakes in an airtight container in the refrigerator for up to 3 days.", 
   baketemp:325, baketime:"22", cupcake_count: 24, category_id: 1, user_id: 1)
vanilla7.save
Photo.create!(remote_image_url: "http://www.epicurious.com/images/recipesmenus/2009/2009_june/353909.jpg", photoable_id: 7, photoable_type: "Recipe")

vanilla8 = Recipe.create(name: "Vanilla Bean Cupcake", cupcake_part: "cake", source: "http://www.chow.com/recipes/12129-vanilla-bean-cupcakes", 
 components:"2 cups cake flour\r\n2 teaspoons baking powder\r\n1 teaspoon fine salt\r\n12 tablespoons unsalted butter (1 1/2 sticks), at room temperature\r\n1 1/2 cups 
 granulated sugar\r\n1 vanilla bean, split lengthwise and scraped, seeds reserved (or 1 tablespoon vanilla extract)\r\n2 large egg whites, at room temperature\r\n2 large eggs,
  at room temperature\r\n3/4 cup whole milk, at room temperature" ,
 instructions:"Heat the oven to 350°F and arrange a rack in the middle. Line 2 (12-well) muffin pans with paper liners. Alternatively, coat the wells with butter; set aside.\r\nCombine flour,
  baking powder, and salt in a medium bowl and whisk to aerate and break up any lumps; set aside.\r\nPlace butter in the bowl of a stand mixer fitted with the paddle attachment and beat on medium-high
   speed until very light in color, about 3 minutes. Add sugar and vanilla seeds (if you’re using vanilla extract instead, you’ll add it later), and continue beating until the mixture is airy,
    about 3 minutes.\r\nScrape down the paddle and the sides of the bowl, turn the mixer to medium speed, and add the egg whites one at a time, beating well after each addition. Then add the eggs one at a time,
     beating well after each addition.\r\nAdd the milk (and vanilla extract, if you’re using it in place of seeds) and mix until combined (the mixture will look curdled, but it’s not). Scrape down the sides of the bowl.
      Reduce the speed to low, add the reserved flour mixture, and mix until just combined, about 15 seconds.\r\nFill the muffin wells about halfway and bake until the cupcakes are golden brown and a toothpick inserted 
      into the center comes out clean, about 18 minutes. Set the pans on a wire rack and let cool for 5 minutes. Remove the cupcakes from the pans and let cool completely before frosting.", 
   baketemp:350, baketime:"18", cupcake_count: 24, category_id: 1, user_id: 1)
vanilla8.save
Photo.create!(remote_image_url: "http://search.chow.com/thumbnail/480/0/www.chowstatic.com/assets/2010/09/12129_vanilla_bean_cupcakes_620.jpg", photoable_id: 8, photoable_type: "Recipe")

vanilla9 = Recipe.create(name: "Classic Vanilla Cupcakes", cupcake_part: "cake", source: "http://food52.com/recipes/15667-classic-vanilla-cupcakes", 
 components:"1 1/3 cup all-purpose flour\r\n1 1/2 teaspoon baking soda\r\n1/2 teaspoon kosher salt\r\n3/4 cups granulated sugar\r\n1/2 cup unsalted butter,
  softened\r\n1/2 cup greek yogurt\r\n1 egg\r\n1 egg yolk\r\n1 tablespoon vanilla bean paste",
 instructions:"Preheat oven to 350° F. Line cupcake pan with paper liners. Allow all ingredients to reach room temperature. In a large bowl combine flour, salt, baking powder, and sugar. Beat on low briefly to combine.
  Add butter, and mix on medium speed until coarse crumbs form, less than a minute. Beat in yogurt until incorporated, batter will still be lumpy. In a small bowl, whisk together egg, egg yolk, and vanilla bean.
   Beat egg mixture into batter until smooth. It will be very thick and sticky. Divide batter evenly among cups in pan, about 1/3 cup of batter in each. Using an ice cream scoop makes this very easy. Using a small
    spoon or off-set spatula, smooth the top of the batter in each cup. Bake for 20 minutes for standard cupcakes (12 for mini), or until a toothpick comes out clean. Cool in pan for 5 minutes, then remove cupcakes
     and cool completely on a rack. While cupcakes cool, make frosting. With a hand mixer, or a stand mixer with a whisk attachment, whip butter on high speed for at least three minutes, until it is light in color 
     and doubles in volume. In one cup increments, beat in sugar. This step can be done to taste. Beat in salt, then vanilla. Last, briefly beat in heavy cream.", 
   baketemp:350, baketime:"20", cupcake_count: 12, category_id: 1, user_id: 1)
vanilla9.save
Photo.create!(remote_image_url: "http://d2k9njawademcf.cloudfront.net/indeximages/23492/original/IMG_0152.jpg?1380087001", photoable_id: 9, photoable_type: "Recipe")

vanilla10 = Recipe.create(name: "Double Vanilla Cupcakes", cupcake_part: "cake", source: "http://www.simplyrecipes.com/recipes/double_vanilla_cupcakes/", 
 components:"1 1/2 cups + 2 tablespoons all-purpose flour\r\n1/4 teaspoon kosher salt\r\n1 1/4 teaspoons baking powder\r\n1/2 cup unsalted butter,
  room temperature\r\n1 cup sugar\r\n1 egg plus 2 egg whites\r\n1/2 cup whole milk\r\n1/4 cup
  sour cream\r\n1 1/2 teaspoons of vanilla extract\r\n1/2 vanilla bean (or one whole bean if you can spare it)" ,
 instructions:"1.  Preheat oven to 350 degrees F. While the oven preheats cut open and scrape out the seeds of a vanilla bean. Place the seeds, empty bean, and the milk into a small saucepan. Heat to just under a simmer
  for a few minutes being careful not to scald the milk. Remove from heat and allow the milk to steep and cool. (Be sure to remove the bean after it cools. Wash it and then place it out to dry so it can be used again.
    )\r\n\r\n2. Beat the butter for about 3 minutes on medium speed, then add the sugar and beat until light and fluffy, about 3 minutes. Add the egg and beat for 30 seconds. Add the egg whites, one at a time, beating 
for 30 seconds each.\r\n\r\n3. In one bowl sift together the flour, baking powder, and salt. In another whisk together the vanilla steeped milk, vanilla extract, and sour cream.\r\n\r\n4. Add the flour mixture and the
 milk mixture to the butter sugar egg mixture in alternating additions (dry-wet-dry method), starting and ending with the flour. Mix until just combined being sure to not overbeat.\r\n\r\n5. Divide the batter into cupcake
  papers in a muffin tin and bake at 350F for 18-20 minutes or until slightly golden brown. Be sure to rotate the cupcakes after the first 15 minutes to ensure even baking. Be sure to keep a close eye as these can get overbaked quickly.
   Allow to cool on a wire rack. Frost when cooled.", 
   baketemp:350, baketime:"18-20", cupcake_count: 12, category_id: 1, user_id: 1)

vanilla10.save
Photo.create!(remote_image_url: "http://www.simplyrecipes.com/wp-content/uploads/2009/08/vanilla-vanilla-cupcakes.jpg", photoable_id: 10, photoable_type: "Recipe")
Photo.create!(remote_image_url: "http://www.simplyrecipes.com/wp-content/uploads/2009/08/vanilla-vanilla-cupcakes.jpg", photoable_id: 11, photoable_type: "Image")
image1 = Image.create(name: "test")
image1.save
# vanilla11 = Recipe.create(name: "", cupcake_part: "cake", source: "", 
#  components:"",
#  instructions:"", 
#    baketemp:350, baketime:"", cupcake_count: 24, category_id: 1, user_id: 1)
# vanilla11.save
