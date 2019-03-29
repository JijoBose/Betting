class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :match_id
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.float :commission
      t.boolean :status

      t.timestamps
    end
  end
end
