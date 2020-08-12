class RestaurantPizzasController < ApplicationController

    def show
        @restaurant_pizza = RestaurantPizza.find(params[:id])
    end

    def new
        @restaurant_pizza = RestaurantPizza.new
    end


    def create
        @restaurant_pizza = RestaurantPizza.new(restpizza_params)

        if @restaurant_pizza.save
            redirect_to @restaurant_pizza
        else
            flash[:error] = @restaurant_pizza.errors.full_messages
            redirect_to restaurant_path
        end
    end


    private
    def restpizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
    
end
