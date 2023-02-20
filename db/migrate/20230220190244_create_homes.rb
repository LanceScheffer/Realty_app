class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.integer :year_built
      t.integer :size
      t.decimal :price
      t.date :listing_date
      t.integer :bedrooms
      t.integer :baths
      t.string :address
      t.string :state

      t.timestamps
    end
  end
end
