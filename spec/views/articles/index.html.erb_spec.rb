# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/index', type: :view do
  before(:each) do
    assign(:articles, [
             Article.create!(
               alt: 'Alt',
               title: 'Title',
               caption: 'Caption',
               content: 'MyText'
             ),
             Article.create!(
               alt: 'Alt',
               title: 'Title',
               caption: 'Caption',
               content: 'MyText'
             )
           ])
  end

  it 'renders a list of articles' do
    render
    assert_select 'tr>td', text: 'Alt'.to_s, count: 2
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Caption'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
