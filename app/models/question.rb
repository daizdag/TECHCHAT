class Question < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :name, presence: true
  has_many :comments
end
