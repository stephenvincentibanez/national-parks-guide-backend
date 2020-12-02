class ParksController < ApplicationController

    def index
        render({json: Park.all})
    end

    def search
        # byebug
        state = params[:state]
        # render json: {success: "fuck yeah"}
    end

end
