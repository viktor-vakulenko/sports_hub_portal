class Article < ApplicationRecord

  def self.search(search)
    if search != ''
      Article.where(['title LIKE(?) OR content LIKE(?) OR caption LIKE(?) ', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Article.order('created_at DESC')
    end
  end

end
