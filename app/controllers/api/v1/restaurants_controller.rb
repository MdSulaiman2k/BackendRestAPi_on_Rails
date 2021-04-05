module Api
    module V1
        class RestaurantsController < ApplicationController
            def index
                restaurants = Restaurant.where("timing  REGEXP '" + "[#{params[:time]}]'" ).limit(Integer(params[:data])).offset(3* Integer(params[:page])) ;
                render json: {data:restaurants} ,status: :ok
            end

            def show 
                restaurants = Restaurant.where("timing  REGEXP '" + "[#{params[:time]}]' AND hotelname  REGEXP '" + "#{params[:id]}'"  ).limit(Integer(params[:data])).offset(3* Integer(params[:page])) ;
                render json: {data:restaurants} ,status: :ok
            end
        end
    end
end
