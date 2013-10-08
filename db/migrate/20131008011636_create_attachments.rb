class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :attachable, :polymorphic => true
      t.string :type
      t.string :attached_file_name
      t.string :attached_content_type
      t.integer :attached_file_size
      t.datetime :attached_updated_at
      t.text :description
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps
    end

  end
end
