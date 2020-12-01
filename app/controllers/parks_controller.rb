class ParksController < ApplicationController

    def index
        render({json: Park.all})
    end

end
