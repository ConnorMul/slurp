class User < ApplicationRecord
    has_many :reviews
    has_one :kitchen
    has_many :cocktails, through: :reviews
end
