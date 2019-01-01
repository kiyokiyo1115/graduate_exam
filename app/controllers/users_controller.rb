class UsersController < ApplicationController
  
  def index
  end

  def show
    @user = User.find(params[:id])
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
end