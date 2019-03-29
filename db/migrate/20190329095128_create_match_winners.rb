class CreateMatchWinners < ActiveRecord::Migration[5.2]
  def change
    create_table :match_winners do |t|
      t.integer :match_id
      t.integer :team_id

      t.timestamps
    end
  end
end
