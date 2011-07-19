class CreateEmailcontacts < ActiveRecord::Migration
  def self.up
    create_table :emailcontacts do |t|
      t.string :emailaddress

      t.timestamps
    end
  end

  def self.down
    drop_table :emailcontacts
  end
end
