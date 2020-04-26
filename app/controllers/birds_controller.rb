class BirdsController < ApplicationController
    before_action :find_bird, only: [:show]

    def index 
        @birds = Bird.all
    end

    def new 
        @bird = Bird.new
    end

    def create 
        @bird = Bird.create(bird_params)
        redirect_to bird_path(@bird)
    end
    
    def show 
    end

    private 

    def bird_params 
        params.require(:bird).permit(:name, :species)
    end

    def find_bird
        @bird = Bird.find(params[:id])
    end

end