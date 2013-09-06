class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :user_id, :weight, :skill_id
      t.datetime :due_date
      t.timestamps
    end
  end
end
