class CreateBrewedCoffees < ActiveRecord::Migration
  def change
    create_table :brewed_coffees do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
