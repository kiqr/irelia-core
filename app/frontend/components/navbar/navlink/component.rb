# frozen_string_literal: true

module Navbar
  module Navlink
    class Component < ApplicationViewComponent
      option :target # required
      option :active, optional: true, default: false
      option :text, optional: true
      option :custom_class, optional: true
      option :icon, optional: true
    end
  end
end
