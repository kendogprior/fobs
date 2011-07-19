class CreateMemberFees < ActiveRecord::Migration
  def self.up
    create_table :member_fees do |t|
      t.string :member_type
      t.integer :fee
    end
  end

  def self.down
    drop_table :member_fees
  end
end
