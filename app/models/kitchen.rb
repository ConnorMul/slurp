class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :cocktails
end
