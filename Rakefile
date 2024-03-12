# frozen_string_literal: true

require "bundler/setup"

APP_RAKEFILE = File.expand_path("test/dummy/Rakefile", __dir__)

load "rails/tasks/engine.rake"
load "rails/tasks/statistics.rake"

require "standard/rake"
require "rake/testtask"

require "bundler/gem_tasks"

task default: %i[test standard]
