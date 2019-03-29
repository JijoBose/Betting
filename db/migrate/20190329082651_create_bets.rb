class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.integer :event_id
      t.integer :user_id
      t.float :amount

      t.timestamps
    end
  end
end
