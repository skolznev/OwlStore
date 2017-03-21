class AddTypeProduct < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :cost, :decimal
  	#add others params
  end
end
