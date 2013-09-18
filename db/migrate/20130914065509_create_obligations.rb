class CreateObligations < ActiveRecord::Migration
  def change
    create_table :obligations do |t|
      t.date :date_completed
      t.integer :user_id
      t.integer :task_id
    end
  end
end
