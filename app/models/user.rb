class User < ActiveRecord::Base
  has_many :uploads, class_name: "Lesson"
  has_and_belongs_to_many :upvoted, class_name: "Lesson"
  has_many :comments

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :handle, presence: true, uniqueness: true, length: {maximum: 30}

end
