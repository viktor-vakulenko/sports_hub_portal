# frozen_string_literal: true

Sidekiq::Extensions.enable_delay!

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/sidekiq_test' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/sidekiq_test' }
end
