class Category < ApplicationRecord
  has_many :articles, dependent: :destroy
  belongs_to :parent, class_name: 'Category', optional: true
  has_many :subcategories, class_name: 'Category', foreign_key: :parent_id, dependent: :destroy

  scope :parent_categories, ->(sub_category_id) { where(parent_id: sub_category_id) }
end
