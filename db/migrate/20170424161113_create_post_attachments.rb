class CreatePostAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :post_attachments do |t|
      t.integer :driverride_id
      t.string :avatar

      t.timestamps
    end
  end
end
