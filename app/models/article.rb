class Article < ApplicationRecord
  belongs_to :category, optional: true
  has_one_attached :image

  def increase_visit
    visit_counter = + 1
    save!
  end

end
