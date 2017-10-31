class CreateCommonts < ActiveRecord::Migration[5.0]
  def change
    create_table :commonts do |t|
      t.string :name
      t.text :body
      t.references :driverride, foreign_key: true

      t.timestamps
    end
  end
end
