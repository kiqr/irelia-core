# frozen_string_literal: true

require "test_helper"

require_relative "dummy/config/initializers/irelia"

class IreliaTest < ActiveSupport::TestCase
  test "it can load configuration values" do
    assert Irelia.config.application_name == "Irelia"
  end
end
