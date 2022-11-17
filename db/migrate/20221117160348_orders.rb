class Orders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.text :name
      t.text :phone
      t.text :orders_input

      t.timestamps
    end
  end
end
