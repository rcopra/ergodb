class QuestionnaireResponse < ApplicationRecord
  belongs_to :user, optional: true
  serialize :responses, JSON

  validates :session_id, presence: true, unless: -> { user_id.present? }
  validates :user_id, presence: true, unless: -> { session_id.present? }
end
