class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!, except: [:index]

  before_action :configure_permitted_parameters, if: :devise_controller?

      def after_sign_in_path_for(resource)
        if resource.user_type == 2       #nothing is even getting to this controller its all being done in the registrations controller
          '/cooker' 
        else
          '/eater'
        end
      end


  protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) do |user_params|
          user_params.permit(:username, :phone_number, :email, :user_type, :password, :password_confirmation)
        end
      end


end
