# frozen_string_literal: true

module Irelia
  module Controllers
    module Application
      extend ActiveSupport::Concern

      included do
        before_action :authenticate_user!
        before_action :authenticate_account!, unless: :devise_controller?
        before_action :setup_breadcrumb_for_team
      end

      private
        def setup_breadcrumb_for_team
          return unless user_signed_in?
          breadcrumb(current_account.name, "#") if current_account && current_account != current_user.personal_account
        end
    end
  end
end
