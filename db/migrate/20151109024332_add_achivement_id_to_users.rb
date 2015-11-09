class AddAchivementIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :achivement_id, :integer
  end
end
