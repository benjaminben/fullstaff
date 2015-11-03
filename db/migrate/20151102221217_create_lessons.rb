class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :video_link
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
