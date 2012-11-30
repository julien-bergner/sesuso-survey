class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(user)
    @final_url = root_url
    stored_location_for(user) ||
        if user.has_role?(:admin)
          @final_url = surveys_url
        elsif user.has_role?(:agent)
          @user = User.find(user)
          if @user.surveys.count == 1 then
            @final_url = survey_url(user)
          else
            @final_url = surveys_url
          end
        end
    @final_url
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

end