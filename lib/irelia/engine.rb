# frozen_string_literal: true

module Irelia
  class Engine < ::Rails::Engine
    config.autoload_paths << Irelia::Engine.root.join("lib")
    config.autoload_paths << Irelia::Engine.root.join("app", "frontend", "components")
    config.view_component.preview_paths << Irelia::Engine.root.join("app", "frontend", "components")

    # Add the app/javascript directory to the asset pipeline
    initializer "irelia.assets.precompile" do |app|
      app.config.assets.paths << Irelia::Engine.root.join("app", "javascript")
      app.config.assets.precompile += %w[irelia_manifest]
    end

    # Add the importmap paths
    initializer "irelia.importmap", before: "importmap" do |app|
      app.config.importmap.paths << Irelia::Engine.root.join("config/importmap.rb")
    end
  end
end
