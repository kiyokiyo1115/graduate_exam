class Exam < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :review_users, through: :reviews, source: :user  
end
