class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  has_many :exams
  has_many :reviews, dependent: :destroy
  has_many :review_exams, through: :reviews, source: :exam
end
