class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  VALID_STATUSES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: VALID_STATUSES }
end
