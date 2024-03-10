# frozen_string_literal: true

require "rails/generators/base"
require "rails/generators/active_model"
require "rails/generators/active_record/migration"

module Irelia
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.expand_path("../../templates", __FILE__)

    desc "Creates the Irelia initializer."

    def copy_initializers
      copy_file "../../../config/initializers/devise.rb", "config/initializers/devise.rb"
      copy_file "../../../config/initializers/irelia.rb", "config/initializers/irelia.rb"
    end

    desc "Copy the tailwind.config.js file to the config directory."

    def copy_tailwind_config
      template "tailwind.config.js", "config/tailwind.config.js"
    end
  end
end
