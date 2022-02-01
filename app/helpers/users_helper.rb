module UsersHelper
  def self.user_avatar(user_id)
    user = User.find(user_id)
    if user.avatar.attached?
      image_tag user.avatar
    else
      image_tag 'default_avatar.jpg'
    end
  end
end
