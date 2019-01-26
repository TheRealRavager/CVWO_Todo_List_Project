class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :title
      t.text :details
      t.boolean :completed
      t.date :deadline
      t.date :completion_date

      t.timestamps
    end
  end
end
