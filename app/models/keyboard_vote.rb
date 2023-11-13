class KeyboardVote < ApplicationRecord
  belongs_to :keyboard
  belongs_to :user

  validates :vote_type, presence: true, inclusion: { in: %w[upvote downvote] }

  validates :user_id, uniqueness: { scope: :keyboard_id, message: "has already voted for this keyboard"}
end
