# frozen_string_literal: true

class AddArticlesViewCount < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :visit_counter, :integer
  end
end
