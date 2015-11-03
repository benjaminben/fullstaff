class Lesson < ActiveRecord::Base
  has_many :upvotes
  # belongs_to :user, as: :uploader
  # has_and_belongs_to_many :users, as: :upvoted_by

end
