class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :points
      t.date :expiration

      t.timestamps null: false
    end
  end
end
