class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.text :title
      t.text :genre
      t.integer :rating
      t.text :description
      t.text :cast

      t.timestamps
    end
  end
end
