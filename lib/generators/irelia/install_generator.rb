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
      template "irelia.rb", "config/initializers/irelia.rb"
    end
  end
end
