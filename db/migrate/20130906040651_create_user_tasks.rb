class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :user_tasks do |t|
      t.integer  :user_id, :task_id
      t.timestamps
    end
  end
end
