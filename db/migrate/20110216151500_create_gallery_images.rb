class CreateGalleryImages < ActiveRecord::Migration
  def self.up
    create_table :galleries_images, :id => false do |t|
      t.integer :gallery_id
      t.integer :image_id
      t.timestamps
    end
  end

  def self.down
    drop_table :gallery_images
  end
end
