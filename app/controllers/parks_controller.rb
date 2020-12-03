class ParksController < ApplicationController

    def index
        render({json: Park.all})
    end

    def search
        state = params[:query]
        parks = Park.all.select do |park|
            park.states === state
            # byebug
        end
        render json: parks
    end

end
