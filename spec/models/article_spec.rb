# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  subject do
    FactoryBot.build(:article)
  end


  it 'is valid with valid attributes' do
    article = create(:article)
    expect(article).to be_valid
  end
  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a caption' do
    subject.caption = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a content' do
    subject.content = nil
    expect(subject).to_not be_valid
  end

  it 'Should be able to save article' do
    expect(subject.save).to eq(true)
  end
end
