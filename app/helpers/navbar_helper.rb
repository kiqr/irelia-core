# frozen_string_literal: true

module NavbarHelper
  def navbar(&)
    render(Navbar::Container::Component.new, &)
  end

  def navbar_items(&)
    render(Navbar::MenuItems::Component.new, &)
  end

  def navbar_right(&)
    render(Navbar::RightSection::Component.new, &)
  end

  def navigation_item(text, target, options = {})
    active = options[:active] || request.path == target
    icon = options[:icon] || nil

    render(Navbar::Navlink::Component.new(target:, text:, active:, icon:))
  end

  def navbar_button(text, target, options = {})
    icon = options[:icon] || nil
    method = options[:method] || :get
    custom_class = options[:class] || nil

    render(Navbar::Button::Component.new(target:, text:, icon:, method:, custom_class:))
  end

  def navbar_separator
    render(Navbar::Separator::Component.new)
  end

  def navbar_account_switcher
    render(Navbar::SelectAccount::Component.new(current_user: User.find(current_user.id), current_account:))
  end
end
