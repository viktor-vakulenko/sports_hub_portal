# frozen_string_literal: true

class RemoveColumnInCategoriesTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :alt_text, :string
    remove_column :categories, :caption_text, :string
    remove_column :categories, :content, :text
    remove_column :categories, :headline_text, :string
    add_column :categories, :title, :string
  end
end
