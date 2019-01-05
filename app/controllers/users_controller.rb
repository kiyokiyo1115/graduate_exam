class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  before_action :edit_user, only: [:show, :edit]

  def show
    @user = User.find(params[:id])
  end
  
  def edit
  end

  def review
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "review",
        layout: 'pdf.html',
        encording: 'UTF-8',
        orientation: 'Landscape'
      end
    end
    @user = User.find(params[:id])
    @reviews_exams = @user.reviews
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

end