# frozen_string_literal: true

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
end
