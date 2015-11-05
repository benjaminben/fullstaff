class Tagging < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :tag
end
