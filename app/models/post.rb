class Post < ApplicationRecord
  validates :title, :body, presence: true

  belongs_to :author

  scope :draft -> where(draft: true)
  scope :published -> where(published: true)
end
