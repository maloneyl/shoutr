class SessionsController < Clearance::SessionsController
  private

  def authenticate(_)
    super(session_params)
  end

  def session_params
    { session: session_params_with_email }
  end

  def session_params_with_email
    params.
      require(:session).
      permit(:password).
      merge(email: user.email)
  end

  def user
    user_with_email_or_username || Guest.new
  end

  def user_with_email_or_username
    User.where(email: email_or_username).
      or(User.where(username: email_or_username)).
      first
  end

  def email_or_username
    params[:session][:email_or_username]
  end
end
