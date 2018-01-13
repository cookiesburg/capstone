class CookersController < ApplicationController
    helper_method :patrons

    def new
      @cooker = Cooker.new     #redirects to cooker new html
    end

    def create
      @cooker = Cooker.new(allowed_params.merge({user: current_user}))  #creates new cooker with form params and current user id for user_id column
      if @cooker.save
        redirect_to '/cooker'             #if saves successfully redirects to /cooker - to routes =>
      else
        redirect_to :new
      end
    end

    def show
      @cooker = current_user.cooker        #redirects to cooker show
    end

    def update
      @cooker = Cooker.find(params[:id])
      if @cooker.update_attributes(allowed_params)
        redirect_to cooker_path(current_user.cooker.id)
      end
    end

    def patrons
      @patrons = User.all.where(user_type: 1).find_all  do |e|
        e.eater.cooker_id == current_user.cooker.id
      end
    end



private

  def allowed_params
    return params.require(:cooker).permit(:food_description, :price_per_week, :neighborhood, :delivery_available, :user_id, :dietary_options, :profile_photo)
  end

#   def cooker        this goes in the user controller
#     Cooker.find_by_user_id(self.id)
#   end

end
