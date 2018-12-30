class Exam < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :favorite_users, through: :favorites, source: :user  
end
