class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :url
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :user_id
      t.boolean :storefront
      t.string :facebook
      t.float :average_rating
      t.integer :ratings_count

      t.timestamps
    end
  end
end
