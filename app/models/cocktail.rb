class Cocktail < ApplicationRecord
    has_many :reviews
    has_many :add_cocktails_to_kitchens
    has_many :users, through: :reviews
    belongs_to :kitchen, optional: true

    def random_profile_img
        arr_of_images = ["bar-img-1.jpeg", "bar-img-2.jpeg", "bar-img-3.jpeg", "bar-img-4.jpeg", "bar-img-5.jpeg", "bar-img-6.jpeg", "bar-img-7.jpeg", "bar-img-8.jpeg", "bar-img-9.jpeg"]

        arr_of_images.sample(1)[0] 
    end
end
