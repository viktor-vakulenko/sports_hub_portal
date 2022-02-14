# frozen_string_literal: true

json.extract! category, :id, :parent_id, :team_id, :location_id, :alt_text, :headline_text, :caption_text, :content,
              :comment, :created_at, :updated_at
json.url category_url(category, format: :json)
