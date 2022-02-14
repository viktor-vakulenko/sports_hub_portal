# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'support@gmail.com'
  layout 'mailer'
end
