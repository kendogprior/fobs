class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.integer :membership_number
      t.string :name
      t.string :street
      t.string :town
      t.string :country
      t.string :postcode
      t.string :telenum
      t.string :email
      t.date :datejoin
      t.date :datepaid
      t.string :membertype
      t.string :amountpaid
      t.timestamps

    end
  end

  def self.down
    drop_table :members
  end
end
