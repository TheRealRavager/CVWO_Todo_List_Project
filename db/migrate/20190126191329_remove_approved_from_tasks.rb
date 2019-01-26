class RemoveApprovedFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :approved, :boolean
  end
end
