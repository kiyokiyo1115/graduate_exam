class UsersController < ApplicationController
  
  
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def review
    @user = User.find(params[:id])
    @reviews_exams = @user.reviews
  end
end