# frozen_string_literal: true

require "devise"
require "dry-configurable"
require "dry-initializer"
require "importmap-rails"
require "loaf"
require "meta-tags"
require "simple_form"
require "teamable"
require "view_component-contrib"

module Irelia
  extend Dry::Configurable

  module Controllers
    autoload :Application, "irelia/controllers/application"
    autoload :Public, "irelia/controllers/public"
    autoload :Helpers, "irelia/controllers/helpers"
  end

  module Helpers
    autoload :FullscreenHelper, "irelia/helpers/fullscreen_helper"
    autoload :NavbarHelper, "irelia/helpers/navbar_helper"
    autoload :PageHelper, "irelia/helpers/page_helper"
  end

  # ==> Application name
  # The name of the application. This will be displayed in the meta title
  # and on various places in the application.
  setting :application_name, default: "Irelia"

  # ==> From email
  # Configure the e-mail address which will be shown in Devise::Mailer,
  # note that it will be overwritten if you use your own mailer class
  # with default "from" parameter.
  setting :default_from_email, default: "please-change-me-at-config-initializers-irelia@example.com"
end

require "irelia/version"
require "irelia/engine"
