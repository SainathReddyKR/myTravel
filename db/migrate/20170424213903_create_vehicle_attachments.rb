class CreateVehicleAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_attachments do |t|
      t.integer :passengerride_id
      t.string :avatar

      t.timestamps
    end
  end
end
