class ExamsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def show
    @exam = Exam.offset( rand(Exam.count) ).first
    @review = current_user.reviews.find_by(exam_id: @exam.id)
  end

  def review
    @review = current_user.reviews.find_by(exam_id: @exam.id)
  end
end

