class CreatePayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :payouts do |t|
      t.integer :user_id
      t.integer :event_id
      t.float :amount
      t.string :txn

      t.timestamps
    end
  end
end
