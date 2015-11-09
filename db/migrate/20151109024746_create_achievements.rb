class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.integer :user_id
      t.integer :task_id
      t.integer :points

      t.timestamps null: false
    end
  end
end
