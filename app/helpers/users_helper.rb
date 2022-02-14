# frozen_string_literal: true

module UsersHelper
  def user_avatar(user)
    if user.avatar.attached?
      user.avatar
    else
      'default_avatar.jpg'
    end
  end
end
