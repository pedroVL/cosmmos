class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.references :user_id, foreign_key: true
      t.references :round_id, foreign_key: true
      t.integer :equity
      t.integer :price

      t.timestamps
    end
  end
end
