class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :photo
      t.string :images, array: true, default: []
      t.string :title
      t.text :description
      t.text :about_us

      t.timestamps
    end
  end
end
