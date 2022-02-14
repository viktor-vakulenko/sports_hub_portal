# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/show', type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
                                  alt: 'Alt',
                                  title: 'Title',
                                  caption: 'Caption',
                                  content: 'MyText'
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Alt/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Caption/)
    expect(rendered).to match(/MyText/)
  end
end
