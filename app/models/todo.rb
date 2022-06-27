class Todo < ApplicationRecord
  has_rich_text :description
  validates :title, :description, presence: true
  belongs_to :user
end
