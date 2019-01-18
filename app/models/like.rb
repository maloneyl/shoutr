class Like < ApplicationRecord
  belongs_to :user
  belongs_to :shout

  # Make sure a user doesn't like the same shout twice
  validates :user_id, uniqueness: { scope: :shout_id }
end
