class AddCityToHome < ActiveRecord::Migration[7.0]
  def change
    add_column :homes, :city, :string
    add_column :homes, :image, :string
  end
end
