# frozen_string_literal: true

require_relative "lib/irelia/version"

Gem::Specification.new do |spec|
  spec.name        = "irelia"
  spec.version     = Irelia::VERSION
  spec.authors     = ["KIQR"]
  spec.email       = ["hello@kiqr.dev"]
  spec.homepage    = "https://github.com/kiqr/irelia-core"
  spec.summary     = "Ruby on Rails starter kit"
  spec.description = "A starter kit for building SaaS applications in Ruby on Rails."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kiqr/irelia-framework"
  spec.metadata["changelog_uri"] = "https://github.com/kiqr/irelia-framework/blob/main/irelia-core/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "dry-configurable", "~> 1.1"
end
