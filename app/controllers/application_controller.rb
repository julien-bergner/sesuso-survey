class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
        if resource.is_a?(User) && resource.has_role?(:admin)
          surveys_url
        elsif resource.is_a?(User) && resource.has_role?(:agent)
          survey_areas_url
        end
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

end