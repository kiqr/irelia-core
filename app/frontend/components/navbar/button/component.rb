# frozen_string_literal: true

module Navbar
  module Button
    class Component < ApplicationViewComponent
      option :target # required
      option :method, default: proc { :get }
      option :icon, optional: true # FontAwesome icon class
      option :text, optional: true
      option :custom_class, optional: true
    end
  end
end
