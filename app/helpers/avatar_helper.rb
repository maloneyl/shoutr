module AvatarHelper
  # This is simply 'avatar',
  # and we are isolating where we are using Gravatar to this single location.
  def avatar(user)
    email_digest = Digest::MD5.hexdigest(user.email)
    gravatar_url = "//www.gravatar.com/avatar/#{email_digest}"
    image_tag gravatar_url
  end
end
