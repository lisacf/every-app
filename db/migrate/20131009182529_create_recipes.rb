class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :cupcake_part
      t.integer :user_id
      t.string :ingredients
      t.string :instructions
      t.integer :baketemp
      t.integer :baketime
      t.integer :preptime
      t.integer :cupcake_count
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
