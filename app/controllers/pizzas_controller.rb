class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def show
    # byebug
    @pizza = Pizza.find(params[:id])
  end

  
end
