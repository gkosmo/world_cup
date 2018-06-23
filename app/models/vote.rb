class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :match
  validates :user, uniqueness: { scope: :match, message: 'Cannot vote twice on a match'}
  validate :has_enough_votes_credit

  def has_enough_votes_credit
    if user.vote_credits <= 0
          errors.add(:user, "doesn't have enough credit")
    end
  end
end
