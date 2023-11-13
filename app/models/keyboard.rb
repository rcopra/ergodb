class Keyboard < ApplicationRecord
  belongs_to :user, optional: true
  has_many :keyboard_votes, dependent: :destroy # Each keyboard can have many votes (upvotes/downvotes)
  has_many :favorites, dependent: :destroy # Each keyboard can be favorited by many users
  has_many :images, dependent: :destroy # Each keyboard can have multiple images associated with it
end
