class CreateEventWinners < ActiveRecord::Migration[5.2]
  def change
    create_table :event_winners do |t|
      t.integer :event_id
      t.integer :team_id

      t.timestamps
    end
  end
end
