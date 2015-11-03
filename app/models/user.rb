class User < ActiveRecord::Base
  has_many :lessons, as: :uploads
  has_and_belongs_to_many :lessons, as: :upvoted

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :handle, presence: true, uniqueness: true, length: {maximum: 30}
end
