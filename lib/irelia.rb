# frozen_string_literal: true

require "dry-configurable"
require "dry-initializer"
require "importmap-rails"
require "loaf"
require "meta-tags"
require "view_component-contrib"
require "simple_form"

module Irelia
  extend Dry::Configurable

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
