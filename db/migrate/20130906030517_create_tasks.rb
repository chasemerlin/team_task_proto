class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :weight
      t.date :assigned_date
      t.date :due_date
      t.boolean :completed
      t.timestamps
    end
  end
end
