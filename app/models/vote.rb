class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :match
  validates :user, uniqueness: { scope: :match, message: 'Cannot vote twice on a match'}
end
