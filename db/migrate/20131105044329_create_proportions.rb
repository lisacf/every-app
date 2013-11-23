class CreateProportions < ActiveRecord::Migration
  def change
    create_table :proportions do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :recipe, index: true
      t.float :amount
      t.string :measure
      t.string :comment

      t.timestamps
    end
  end
end
