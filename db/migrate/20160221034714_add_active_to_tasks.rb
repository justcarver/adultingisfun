class AddActiveToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :active, :date
  end
end
