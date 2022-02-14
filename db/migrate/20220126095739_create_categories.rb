# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.integer :parent_id
      t.integer :team_id
      t.integer :location_id
      t.string :alt_text
      t.string :headline_text
      t.string :caption_text
      t.text :content
      t.boolean :comment

      t.timestamps
    end
  end
end
