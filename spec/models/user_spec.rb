# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it "should be able to save user'" do
    user = create(:user)
    expect(user.save).to eq(true)
  end
end
