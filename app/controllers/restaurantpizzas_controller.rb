class RestaurantpizzasController < ApplicationController

    def index 
        @restaurantpizzas = Restaurantpizza.all
    end

    def new 
        @restaurantpizza = Restaurantpizza.new()
    end

    def create 
        @restaurantpizza = Restaurantpizza.new()
        if  # restaurantpizza_params
            @restaurantpizza.save
            redirect_to @restaurantpizza
        else
            render 'new'
        end
    end

    private 
    def restaurantpizza_params 
        params.require(:restaurantpizza).permit(:pizza, :restaurant, :price)
    end
end
