class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :breakfast_crickets
      t.boolean :breakfast_veggies
      t.text :breakfast_comments
      t.string :dinner_crikets
      t.boolean :dinner_veggies
      t.text :dinner_comments
      t.boolean :general_poop
      t.boolean :general_bath
      t.float :general_weight
      t.float :general_length
      t.text :general_comments
      t.integer :general_activity

      t.timestamps
    end
  end
end
