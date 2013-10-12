class CreateStoreLinks < ActiveRecord::Migration
  def change
    create_table :store_links do |t|
      t.string :name
      t.string :source
      t.string :url
      t.belongs_to :pant

      t.timestamps
    end
  end
end
