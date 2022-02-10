# frozen_string_literal: true

class SendEmailToUserJob < ActiveJob::Base
  include Sidekiq::Worker

  def perform(user_id)
    user = User.find(user_id)
    SomeMailer.send_email(user.email).deliver_now
  end
end