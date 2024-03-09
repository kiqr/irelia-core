# frozen_string_literal: true

module Irelia
  class Engine < ::Rails::Engine
    config.autoload_paths << Irelia::Engine.root.join("lib")
  end
end
