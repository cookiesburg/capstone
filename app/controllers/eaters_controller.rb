class EatersController < ApplicationController

    def new
      @eater = Eater.new
    end

    def create
      @eater = Eater.new(params[:user_id, :subscribed_to])
      if @eater.save
        redirect_to @eater  
      end
    end

    def show
        @eater = Eater.find(params[:id])
    end

private

    def allowed_params
      return params.require(:eater).permit(:username, :phone_number, :email, :user_type)
    end

end