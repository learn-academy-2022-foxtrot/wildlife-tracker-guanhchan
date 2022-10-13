class AnimailsController < ApplicationController

    def index
        animail = Animail.all
        render json: animail
    end

    def show
        animail = Animail.find(params[:id])
        render json: animail
    end

    def create
        animail = Animail.create(animail_params)
        if animail.valid?
          render json: animail
        else
          render json: animail.errors
        end
      end

      def destroy
        animail = Animail.find(params[:id])
        if animail.destroy
          render json: animail
        else
          render json: animail.errors
        end
      end

      def update
        animail = Animail.find(params[:id])
        animail.update(animail_params)
        if animail.valid?
          render json: animail
        else
          render json: animail.errors
        end
      end

      private
      def animail_params
        params.require(:animail).permit(:name, :binomial)
      end
end
