class SearchArticleService
  def self.search_validation(keyword)
    if keyword != ''
      #query classes
      Article.where('title ILIKE(?) OR content ILIKE(?) OR caption ILIKE(?) ', "%#{keyword}%", "%#{keyword}%", "%#{keyword}%")
    else
      Article.order('created_at DESC')
    end
  end
end