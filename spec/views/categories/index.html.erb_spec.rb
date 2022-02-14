# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before(:each) do
    assign(:categories, [
             Category.create!(
               parent_id: 2,
               team_id: 3,
               location_id: 4,
               alt_text: 'Alt Text',
               headline_text: 'Headline Text',
               caption_text: 'Caption Text',
               content: 'MyText',
               comment: false
             ),
             Category.create!(
               parent_id: 2,
               team_id: 3,
               location_id: 4,
               alt_text: 'Alt Text',
               headline_text: 'Headline Text',
               caption_text: 'Caption Text',
               content: 'MyText',
               comment: false
             )
           ])
  end

  it 'renders a list of categories' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
    assert_select 'tr>td', text: 'Alt Text'.to_s, count: 2
    assert_select 'tr>td', text: 'Headline Text'.to_s, count: 2
    assert_select 'tr>td', text: 'Caption Text'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
  end
end
