class CreateTeamMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :team_matches do |t|
      t.integer :team_id
      t.integer :match_id
      t.integer :score

      t.timestamps
    end
  end
end
