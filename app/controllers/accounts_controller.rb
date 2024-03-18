# frozen_string_literal: true

class AccountsController < Teamable::AccountsController
  def edit
    breadcrumb "Settings", "#"
    breadcrumb "Edit account profile", edit_account_path
    super
  end
end
