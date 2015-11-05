class CreateUpvote < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true
    end
  end
end
