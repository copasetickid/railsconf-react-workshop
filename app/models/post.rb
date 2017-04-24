class Post < ApplicationRecord
  validates :title, :body, presence: true

  belongs_to :author
end
