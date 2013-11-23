class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cupcake_part
      t.text :components
      t.text :instructions
      t.text :source
      t.integer :baketemp
      t.string :baketime
      t.integer :cupcake_count, default: 0
      t.float :average_rating, default: 0.0, null: false
      t.integer :ratings_count, default: 0
      t.belongs_to :category, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
