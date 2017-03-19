class AddTypeProduct < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :type_product, :string
  end
end
