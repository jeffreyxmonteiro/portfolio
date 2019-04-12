module ApplicationHelper
  def login_helper
     if current_user.is_a?(GuestUser)
       (link_to "Register", new_user_registration_path) +
       "<strong> | </strong>".html_safe +
       (link_to "Login",  new_user_session_path)
     else
       (link_to "Edit", edit_user_registration_path) +
       "<strong> | </strong>".html_safe +
       (link_to "Logout", destroy_user_session_path, method: :delete)
     end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}!"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    MonteiroViewTool::Renderer.copyright('Jeff Monteiro', 'All rights reserved')
  end
end

