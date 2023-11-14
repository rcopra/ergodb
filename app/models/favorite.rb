class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :keyboard

  validates :keyboard_id, uniqueness: { scope: :user_id, message: "has already been favorited by the user" }
end
