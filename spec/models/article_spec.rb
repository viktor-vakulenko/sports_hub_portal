# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  subject do
    described_class.new(caption: Faker::Lorem.unique.sentence, title: Faker::Lorem.unique.sentence) do |article|
      article.content = Faker::Lorem.paragraphs(number: 4)
    end
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
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
end
