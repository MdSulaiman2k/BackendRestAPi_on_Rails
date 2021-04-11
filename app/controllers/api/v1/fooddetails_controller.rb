module Api
    module V1
        class FooddetailsController < ApplicationController
            def index
                food = Fooddetail.where("restaurant_id = #{params[:id]}").limit(Integer(params[:data])).offset(3* Integer(params[:page]))
                render json: {data:food} ,status: :ok
            end

            def show 
                food = Fooddetail.where("restaurant_id = #{params[:id]}").limit(Integer(params[:data])).offset(3* Integer(params[:page]))
                render json: {data:food} ,status: :ok
            end
        end
    end
end
