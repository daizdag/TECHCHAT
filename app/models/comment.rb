class Comment < ApplicationRecord
  validates :comment, presence: true
  validates :name, presence: true
  belongs_to :question
end
