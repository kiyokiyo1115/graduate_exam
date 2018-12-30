class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :favorite]
  before_action :user_signed_in?, only: [:show, :edit, :update, :review]
  before_action :edit_user, only: [:show, :edit]
  
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

private
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def edit_user
    unless @user.id == current_user.id  
      redirect_to root_path, notice: "ユーザー本人以外は閲覧・編集できません！！"
    end 
end