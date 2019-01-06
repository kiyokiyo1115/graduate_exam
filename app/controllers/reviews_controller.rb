class ReviewsController < ApplicationController
  def create
    review = current_user.reviews.create(exam_id: params[:exam_id])
    redirect_to exams_show_url, notice: "不正解問題に登録しました"
  end
    
  def destroy
    review = current_user.reviews.find_by(id: params[:id]).destroy
    redirect_to exams_show_url, notice: "不正解問題から解除しました"
  end
end
