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
        flash[:alert] = "Subscribed"
        redirect_to eater_path(current_user.eater.id)
      end
    end

private

    def allowed_params
      return params.require(:eater).permit(:allergies, :user_type, :subscribed_to, :cooker_id)
    end

    def filtered_cookers
      cookers = Cooker.all
      cookers = cookers.where(price_per_week: params[:price]) if params[:price]
      cookers = cookers.where(dietary_options: params[:diet]) if params[:diet]
      cookers = cookers.where(neighborhood: params[:location]) if params[:location]
      cookers = cookers.where(delivery_available: params[:delivery]) if params[:delivery]
      cookers
    end
end