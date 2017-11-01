class EatersController < ApplicationController

    def new
      @eater = Eater.new
    end

    def create
      @eater = Eater.new(params[:id])
      if @eater.save
        redirect_to @eater  
      end
    end

    def show 
      @eater = current_user.eater
      @cookers = filtered_cookers
    end

    def update
      @eater = current_user.eater
      if @eater.update_attributes(allowed_params)
        redirect_to eater_path(current_user.eater.id)
        sleep(1.second)
        flash[:alert] = "Subscribed"
      end
    end

private

    def allowed_params
      return params.require(:eater).permit(:user_type, :subscribed_to, :cooker_id)
    end

    def filtered_cookers
      cookers = Cooker.all
      params[:price] == "Any" ? cookers = cookers : cookers = cookers.where(price_per_week: params[:price])
      params[:diet] == "None" ? cookers = cookers : cookers = cookers.where(dietary_options: params[:diet])
      params[:location] == "All" ? cookers = cookers : cookers = cookers.where(neighborhood: params[:location]) 
      cookers = cookers.where(delivery_available: params[:delivery]) if params[:delivery]
      cookers
    end

end