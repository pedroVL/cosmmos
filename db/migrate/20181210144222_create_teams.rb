class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :user_id, foreign_key: true
      t.integer :project_id, foreign_key: true

      t.timestamps
    end
  end
end
