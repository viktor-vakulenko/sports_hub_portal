# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :category, optional: true
  has_one_attached :image
  validates :title, presence: true
  validates :content, presence: true
  validates :caption, presence: true
end
