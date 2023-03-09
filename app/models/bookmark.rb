class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # There is a :scope option that you can use to specify one or more attributes
  # that are used to limit the uniqueness check: validates :name, uniqueness: { scope: :year}
  validates :movie, uniqueness: { scope: :list }
  # validates :name, length: { minimum: 2 }
  validates :comment, presence: true, length: { minimum: 6 }
end
