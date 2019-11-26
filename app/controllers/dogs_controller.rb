class DogsController < ApplicationController

    def show
        @dog = Dog.find(params[:id])
    end


    def index
        @dogs = Dog.all
    end


end
