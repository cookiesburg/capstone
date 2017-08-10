class RegistrationsController < Devise::RegistrationsController
#   prepend_before_action :require_no_authentication, only [:new, :create, :cancel]
  




  def sign_up_params
    params.require(:user).permit(:username, :phone_number, :email, :password, :password_confirmation, :user_type)
  end

  def account_update_params
    params.require(:user).permit(:username, :phone_number, :email, :password, :password_confirmation, :current_password)
  end

  def after_sign_up_path_for(resource)  #if the new user is a cooker go to new method in cookers method
    if resource.user_type == 2       
      '/cookers/new' 
    else
      @eater = Eater.create(user: current_user)  #otherwise create new eater and then redirect them to the eater show
      '/eater'                     #effectively bypasses the eater.new page
    end 
  end


private

    # def allowed_params
    #   return params.require(:user).permit(:username, :phone_number, :email, :user_type)
    # end

    # def eater_params
    #     return params.require(:user).permit()
    # end

end