class Keyboard < ApplicationRecord
  belongs_to :user, optional: true
  has_many :keyboard_votes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :images, dependent: :destroy

  TYPE_OPTIONS = ['Pre-Assembled', 'Custom'].freeze
  SWITCHES_OPTIONS = ['MX', 'Alps', 'Choc', 'Choc v2'].freeze
  LAYOUT_OPTIONS = ['Row stagger', 'Ortholinear', 'Column Stagger'].freeze

  validates :name, presence: true
  validates :keyboard_type, inclusion: { in: TYPE_OPTIONS }, allow_nil: true
  validates :switches, inclusion: { in: SWITCHES_OPTIONS }, allow_nil: true
  validates :layout, inclusion: { in: LAYOUT_OPTIONS }, allow_nil: true


  validates :wireless, :hot_swappable, :oled_compatible, :split, :open_source, inclusion: { in: [true, false] }
end
