class Fooddetail < ApplicationRecord
  validates :foodname, presence: true 
  validates :foodtype, presence: true 
    validates :fooddes, presence: true 
    validates :foodrating, presence: true 
    validates :foodtiming, presence: true 
    validates :foodimgsrc,  presence: true 
  belongs_to :restaurant
end
