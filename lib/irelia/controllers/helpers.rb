# frozen_string_literal: true

module Irelia
  module Controllers
    module Helpers
      extend ActiveSupport::Concern

      included do
        helper Irelia::Helpers::FullscreenHelper
        helper Irelia::Helpers::NavbarHelper
        helper Irelia::Helpers::PageHelper
      end
    end
  end
end
