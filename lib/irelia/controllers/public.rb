# frozen_string_literal: true

module Irelia
  module Controllers
    module Public
      extend ActiveSupport::Concern

      included do
        skip_before_action :authenticate_user!
        skip_before_action :authenticate_account!, unless: :devise_controller?
        skip_before_action :setup_breadcrumb_for_team
      end
    end
  end
end
