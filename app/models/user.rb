class User < ApplicationRecord
    has_many :reviews
    has_one :kitchen
    has_many :cocktails, through: :reviews

    has_secure_password

    validates_uniqueness_of :name
	#validates_confirmation_of :password, :on => :create
    #validates_length_of :password, :within => 8..16
end
