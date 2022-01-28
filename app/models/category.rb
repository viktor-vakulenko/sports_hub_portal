class Category < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_ancestry
end
