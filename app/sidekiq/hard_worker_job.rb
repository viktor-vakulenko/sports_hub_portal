# frozen_string_literal: true

class HardWorkerJob
  include Sidekiq::Job

  def perform(*args)
    # Do something
  end
end
