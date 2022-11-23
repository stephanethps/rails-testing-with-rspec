class Todo < ApplicationRecord

  validates :title, presence: true

  scope :completed, -> { where(completed: true) }
end
