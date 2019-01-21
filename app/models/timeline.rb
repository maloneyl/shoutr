class Timeline
  def initialize(users)
    @users = users
  end

  def shouts
    Shout.
      where(user_id: users).
      order(created_at: :desc)
  end

  # or simply `include ActiveModel::Conversion` in this class
  def to_partial_path
    "timelines/timeline"
  end

  private

  attr_reader :users
end
