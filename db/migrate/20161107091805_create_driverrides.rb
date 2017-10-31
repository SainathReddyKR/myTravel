class CreateDriverrides < ActiveRecord::Migration[5.0]
  def change
    create_table :driverrides do |t|
      t.string :name
      t.integer :rent
      t.integer :contract
      t.integer :bedroom
      t.integer :bathroom
      t.integer :kitchen
      t.boolean :swimmingpool
      t.boolean :elevator
      t.boolean :parking
      t.boolean :security
      t.boolean :balcony
      t.boolean :gym
      t.boolean :kids
      t.integer :area
      t.text :address
      t.boolean :eleven
      t.boolean :bigc
      t.boolean :familymart
      t.boolean :tesco
      t.boolean :tops
      t.boolean :lawson
      t.boolean :makro
      t.text :additionalinfo
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
