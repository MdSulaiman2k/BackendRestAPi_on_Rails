module Api
    module V1
        class RestaurantsController < ApplicationController
            def index
                restaurants = Restaurant.order('created_at DESC').limit(3).offset(3* Integer(params[:id])) ;
                render json: {data:restaurants} ,status: :ok
            end
        end
    end
end
