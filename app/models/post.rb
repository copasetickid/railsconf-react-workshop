class Post < ApplicationRecord
  include Status

  validates :title, :body, presence: true

  belongs_to :author

  scope :draft, -> { where(draft: true) }
  scope :published, -> { where(published: true) }
end
