# frozen_string_literal: true

require "test_helper"
require "generators/irelia/install_generator"

module Irelia
  class InstallGeneratorTest < Rails::Generators::TestCase
    tests Irelia::InstallGenerator
    destination File.expand_path("../../../tmp/tests/installation", __FILE__)
    setup :prepare_destination

    test "that the irelia initializers are copied successfully" do
      run_generator
      assert_file "config/initializers/devise.rb"
      assert_file "config/initializers/irelia.rb"
    end

    test "that config/tailwind.config.js is identical to the template file in the template directory" do
      run_generator
      assert_file "config/tailwind.config.js", File.read(File.expand_path("../../../lib/generators/templates/tailwind.config.js", __FILE__))
    end
  end
end
