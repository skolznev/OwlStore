class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :discription
      t.string :color

      t.timestamps
    end
  end
end
