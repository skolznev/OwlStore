class AddCost < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :season, :string
  	add_column :products, :sex, :string
  	add_column :products, :size, :decimal
  	add_column :products, :cost, :decimal
  	add_column :products, :discount, :decimal
  end
end
