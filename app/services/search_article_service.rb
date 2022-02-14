# frozen_string_literal: true

class SearchArticleService
  def self.search_validation(keyword)
    if keyword == ''
      Article.order('created_at DESC')
    else
      # query classes
      Article.where('title ILIKE(?) OR content ILIKE(?) OR caption ILIKE(?) ', "%#{keyword}%", "%#{keyword}%",
                    "%#{keyword}%")
    end
  end
end
