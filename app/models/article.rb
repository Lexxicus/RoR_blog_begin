class Article < ApplicationRecord
  has_many :comments
  belongs_to :user, optional: true
  validates :title, length: { in: 6..140 }, presence: true
  validates :text, length: { in: 6..4000 }, presence: true

  def subject
    title
  end

  def last_comment
    comments.last
  end

end
