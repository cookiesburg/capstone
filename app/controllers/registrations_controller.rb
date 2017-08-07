class RegistrationsController < Devise::RegistrationsController
#   prepend_before_action :require_no_authentication, only [:new, :create, :cancel]
  




  def sign_up_params
    params.require(:user).permit(:username, :phone_number, :email, :password, :password_confirmation, :user_type)
  end

  def account_update_params
    params.require(:user).permit(:username, :phone_number, :email, :password, :password_confirmation, :current_password)
  end

  def after_sign_up_path_for(resource)
    # @user = User.new(allowed_params)
    # @user.save
    if @user.user_type == 2  
      '/cookers/new' 
    else
        '/eaters/new'
    #   @eater = Eater.new(eater_params)      
    #   redirect_to 'eaters/#{@eater.id}' 
    end
 
  end


private

    def allowed_params
      return params.require(:user).permit(:username, :phone_number, :email, :user_type)
    end

    def eater_params
        return params.require(:user).permit()
    end

end