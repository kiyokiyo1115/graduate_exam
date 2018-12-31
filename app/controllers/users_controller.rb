class UsersController < ApplicationController
  
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def review
    @user = User.find(params[:id])
    @reviews_exams = @user.reviews
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'result',
        layout: 'pdf_layouts.html',
        template: 'users/:id/review',
        encording: 'UTF-8'
      end
    end
  end
end