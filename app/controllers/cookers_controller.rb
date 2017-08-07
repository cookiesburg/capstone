class CookersController < ApplicationController
    def new
        @cooker = Cooker.new
    end

    def create
        @cooker = Cooker.new(allowed_params)
        if @cooker.save        
          redirect_to @cooker
        end
    end

    def show
        @cooker = Cooker.find(params[:id])
    end

private

  def allowed_params
    return params.require(:cooker).permit(:food_description, :price_per_week, :neighborhood, :delivery_available)
  end

end
