class Comment < ApplicationRecord
  belongs_to :article
  validates :author, presence: true
  validates :body, length: { in: 6..4000 }, presence: true
end
