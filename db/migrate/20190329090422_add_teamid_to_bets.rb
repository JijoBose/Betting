class AddTeamidToBets < ActiveRecord::Migration[5.2]
  def change
    add_column :bets, :team_id, :integer
  end
end
