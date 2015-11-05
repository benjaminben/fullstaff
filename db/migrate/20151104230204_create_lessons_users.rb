class CreateLessonsUsers < ActiveRecord::Migration
  def change
    create_table :lessons_users do |t|
      t.integer :lesson_id
      t.integer :user_id
    end
  end
end
