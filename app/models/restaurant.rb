class Restaurant < ApplicationRecord
    validates :hotel_address, presence: true 
    validates :hotel_cate, presence: true 
    validates :hotelimg, presence: true 
    validates :hotelname, presence: true 
    validates :status, presence: true 
    validates :rating,  presence: true 
    validates :counting,  presence: true 
    has_many :fooddetails, dependent: :destroy

end
