class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :match
  validates :user, uniqueness: { scope: :match, message: 'Cannot vote twice on a match'}
  validate :not_enough_credits

  def not_enough_credits
    if user.credit < 1
      errors.add("not enough credits")
    else
      user.credit - 1
      user.save
    end
  end

end
