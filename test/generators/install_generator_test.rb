# frozen_string_literal: true

require "test_helper"
require "generators/irelia/install_generator"

module Irelia
  class InstallGeneratorTest < Rails::Generators::TestCase
    tests Irelia::InstallGenerator
    destination File.expand_path("../../../tmp/tests/installation", __FILE__)
    setup :prepare_destination

    test "that the irelia initializer is copied successfully" do
      run_generator
      assert_file "config/initializers/irelia.rb"
    end
  end
end
