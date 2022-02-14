# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :articles, dependent: :destroy
  belongs_to :parent, class_name: 'Category', optional: true
  has_many :subcategories, class_name: 'Category', foreign_key: :parent_id, dependent: :destroy

  scope :sub_categories, ->(parent_id) { where(parent_id: parent_id) }
end
