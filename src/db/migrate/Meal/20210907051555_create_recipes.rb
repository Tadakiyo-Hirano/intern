class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.float :amount
      t.float :calorie
      t.float :protein
      t.float :fat
      t.float :carbo
      t.float :suger
      t.float :dietary_fiber
      t.float :salt
      t.string :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
