# frozen_string_literal: true

module FullscreenHelper
  def fullscreen(&block)
    render(Page::FullScreen::Component.new, &block)
  end

  def fullscreen_form_container(title:, description: nil, &block)
    render(Page::FullScreen::FormContainer::Component.new(title:, description:), &block)
  end
end
