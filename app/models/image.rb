class Image < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :keyboard, optional: true

  validates :url, presence: true
end
