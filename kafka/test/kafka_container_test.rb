# frozen_string_literal: true

require "test_helper"

class KafkaContainerTest < TestcontainersTest
  def before_all
    super

    @container = Testcontainers::KafkaContainer.new
    @container.start
    @host = @container.host
    @port = @container.first_mapped_port
  end

  def after_all
    if @container&.exists?
      @container&.stop if @container&.running?
      @container&.remove
    end

    super
  end
end
