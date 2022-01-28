class Article < ApplicationRecord
  belongs_to :category, optional: true
  #models scope?
  def self.search(keyword)
    if keyword != ''
      Article.where('title LIKE(?) OR content LIKE(?) OR caption LIKE(?) ', "%#{keyword}%", "%#{keyword}%", "%#{keyword}%")
    else
      Article.order('created_at DESC')
    end
  end

end
