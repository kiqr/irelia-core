# frozen_string_literal: true

module Irelia
  module Helpers
    module PageHelper
      def container(&)
        render(Page::Container::Component.new, &)
      end

      def page_header(**arguments)
        render(Page::Header::Component.new(**arguments))
      end

      def breadcrumbs
        render(Page::Breadcrumbs::Component.new(breadcrumbs: breadcrumb_trail))
      end

      def flash_messages
        render(FlashMessages::Component.new(flash))
      end
    end
  end
end
