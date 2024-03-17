# frozen_string_literal: true

class Page::FullScreen::Announcement::Component < ApplicationViewComponent
  option :image, optional: true
  option :title, optional: true
  option :description, optional: true
  # with_collection_parameter :announcement
end
