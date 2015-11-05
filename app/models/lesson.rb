class Lesson < ActiveRecord::Base
  has_many :upvote_instances, class_name: "Upvote", dependent: :destroy
  belongs_to :uploader, class_name: "User"
  has_and_belongs_to_many :upvoted_by, class_name: "User"
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :comments
  # has_many :comment_instances, class_name: "Comment", dependent: :destroy
  has_and_belongs_to_many :commenter, class_name: "User"
  # belongs_to :user

  def upvotes
    upvote_instances.length
  end

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).lessons
  end
  # def uploader
  #   uploader.length
  # end

end
