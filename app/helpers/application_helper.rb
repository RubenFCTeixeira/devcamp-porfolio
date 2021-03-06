module ApplicationHelper
  # Helper function for View Layout to handle with login logic
  def login_helper
    if current_user.is_a? User
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      (link_to 'Register', new_user_registration_path) +
        '<br>'.html_safe +
        (link_to 'Login', new_user_session_path)
    end
  end

  def source_helper(layout_name)
    greeting = "Thanks for visiting me from #{session[:source]} and you are in #{layout_name} layout"

    if session[:source]
      content_tag(:p, greeting, class: 'source-greeting')
    end
  end
end
