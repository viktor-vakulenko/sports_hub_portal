# frozen_string_literal: true

require 'faker'

Article.create(alt: Faker::Lorem.unique.sentence, caption: Faker::Lorem.unique.sentence,
               title: Faker::Lorem.unique.sentence) do |article|
  article.content = Faker::Lorem.paragraphs(number: 4)
end

test_admin = User.create! first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'topsecret',
                          password_confirmation: 'topsecret', admin: true
test_user = User.create! first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'topsecret',
                         password_confirmation: 'topsecret', admin: false
