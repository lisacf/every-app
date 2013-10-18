class CreateCupcakes < ActiveRecord::Migration
  def change
    create_table :cupcakes do |t|
      t.string :name
      t.string :description
      t.string :source
      t.integer :user_id
      t.belongs_to :user, index: true
      t.float :average_rating, default: 0.0, null: false
      t.integer :ratings_count, default: 0

      t.timestamps
    end
  end
end
