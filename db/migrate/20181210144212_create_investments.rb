class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.references :user, foreign_key: true
      t.references :round, foreign_key: true
      t.integer :equity
      t.integer :price

      t.timestamps
    end
  end
end
