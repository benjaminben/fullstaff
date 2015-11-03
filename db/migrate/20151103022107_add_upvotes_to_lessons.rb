class AddUpvotesToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :upvotes, :integer
  end
end
