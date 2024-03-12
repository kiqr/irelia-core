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

      # Redirect to the dashboard after signing in.
      def after_sign_in_path_for(resource_or_scope)
        dashboard_path
      end

      # Redirect to the sign in page after signing out.
      def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
      end

      def after_account_switched_path(account = nil)
        return dashboard_path(account_id: nil) if defined?(current_user) && current_user&.personal_account == account

        dashboard_path(account_id: account)
      end

      def setup_breadcrumb_for_team
        return unless user_signed_in?
        breadcrumb(current_account.name, "#") if current_account && current_account != current_user.personal_account
      end
    end
  end
end
