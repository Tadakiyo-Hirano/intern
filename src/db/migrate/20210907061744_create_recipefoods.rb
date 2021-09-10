class CreateRecipefoods < ActiveRecord::Migration[5.2]
  def change
    create_table :recipefoods do |t|
      t.string :food_name
      t.integer :amount
      t.integer :calorie
      t.integer :protein
      t.integer :fat
      t.integer :carbo
      t.integer :suger
      t.integer :dietary_fiber
      t.integer :salt
      t.references :user, foreign_key: true
      t.references :recipe


      t.timestamps
    end
  end
end
