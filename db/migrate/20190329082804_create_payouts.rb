class CreatePayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :payouts do |t|
      t.integer :user_id
      t.integer :match_id
      t.float :amount
      t.string :type

      t.timestamps
    end
  end
end
