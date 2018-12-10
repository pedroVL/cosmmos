class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.references :user_id, foreign_key: true
      t.references :project_id, foreign_key: true
      t.integer :equity
      t.string :job_title
      t.text :job_description

      t.timestamps
    end
  end
end
