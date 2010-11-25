class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer :page_id
      t.integer :gallery_id
      t.string :title
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
