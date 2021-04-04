class Restaurant < ApplicationRecord
    validates :hotel_address, presence: true 
    validates :hotel_cate, presence: true 
    validates :hotelimg, presence: true 
    validates :hotelname, presence: true 
    validates :timing, presence: true 
    validates :rating,  presence: true 

end
