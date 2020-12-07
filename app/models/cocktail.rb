class Cocktail < ApplicationRecord
    has_many :reviews
    has_many :add_cocktails_to_kitchens
    has_many :users, through: :reviews
    belongs_to :kitchen, optional: true

    def self.most_reviewed
        self.all.max{ |ct| ct.reviews.length }
    end

    def number_of_reviews
        self.reviews.length
    end

    def average_star_rating
        self.reviews.sum {|rv| rv.stars } / self.reviews.length
    end

    
end
