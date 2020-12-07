class User < ApplicationRecord
    has_many :reviews
    has_one :kitchen
    has_many :cocktails, through: :reviews

    has_secure_password

    validates :name, :password, :age, :email, presence: true
    validates :name, uniqueness: true
    validates :password, length: { in: 8..16 }
    validates :age, numericality: {greater_than: 20}

    #validates_confirmation_of :password, :on => :create
end
