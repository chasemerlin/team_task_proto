class CreateSkillTasks < ActiveRecord::Migration
  def change
    create_table :skill_tasks do |t|
      t.integer :skill_id, :task_id
      t.timestamps
    end
  end
end
