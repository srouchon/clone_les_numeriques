class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :snippet
      t.text :design
      t.text :performance
      t.text :autonomy
      t.text :advantages
      t.text :disadvantages
      t.string :images
      t.date :release_date
      t.integer :global_user_rating
      t.integer :admin_rating
      t.references :category, foreign_key: true
      
      t.timestamps
    end
  end
end
