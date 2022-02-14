# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
                                    parent_id: 2,
                                    team_id: 3,
                                    location_id: 4,
                                    alt_text: 'Alt Text',
                                    headline_text: 'Headline Text',
                                    caption_text: 'Caption Text',
                                    content: 'MyText',
                                    comment: false
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Alt Text/)
    expect(rendered).to match(/Headline Text/)
    expect(rendered).to match(/Caption Text/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
