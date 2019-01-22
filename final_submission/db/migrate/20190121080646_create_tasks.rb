class CreateTasks < ActiveRecord::Migration[5.2]
	def change
		# initialize table with title and details attributes
    create_table :tasks do |t|
      t.string :title
      t.text :details

      t.timestamps
    end
  end
end
