module Api
    module V1
        class RestaurantsController < ApplicationController
            def index
                restaurants = Restaurant.where("status='A' " ).order(counting: :desc).limit(Integer(params[:data])).offset(3* Integer(params[:page])) ;
                if(restaurants.empty?)
                    restaurants = Restaurant.where("status='INA' " ).order(counting: :desc).limit(Integer(params[:data])).offset(3* Integer(params[:active])) ;
                end
                render json: {data:restaurants} ,status: :ok
            end

            def show 
               restaurants = ""
               if(Integer(params[:data]) != 1 )
                   restaurants = Restaurant.where("hotelname  REGEXP '" + "#{params[:id]}'"  ).limit(Integer(params[:data])).offset(3* Integer(params[:page])) ;
               else
                restaurants = Restaurant.where("id = #{params[:id]}") ;
               end
               render json:{data:restaurants}  ,status: :ok
            end
            

            def update
                restaurants = Restaurant.where("id = #{params[:id]}").first
                restaurants.update(:counting => restaurants.counting + 1)
            end  
        end
    end
end
