# frozen_string_literal: true

module FullscreenHelper
  def fullscreen(&)
    render(Page::FullScreen::Component.new, &)
  end

  def fullscreen_form_container(title:, description: nil, &)
    render(Page::FullScreen::FormContainer::Component.new(title:, description:), &)
  end
end
