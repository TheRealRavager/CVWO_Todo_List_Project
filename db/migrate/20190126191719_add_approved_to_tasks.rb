class AddApprovedToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :approved, :boolean, default: false
  end
end
