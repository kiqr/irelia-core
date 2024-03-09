# frozen_string_literal: true

class Navbar::SelectAccount::Component < ApplicationViewComponent
  option :current_user, required: true
  option :current_account, required: true
end
