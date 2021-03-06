class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if resource.has_role?(:admin)
      rails_admin_path
    else
      root_path
    end
  end
end
