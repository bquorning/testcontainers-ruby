require_relative "kafka/version"
require "testcontainers"

module Testcontainers
  class KafkaContainer < ::Testcontainers::DockerContainer
  end
end
