class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.text :s_term
      t.integer :user_id

      t.timestamps
    end
  end
end
