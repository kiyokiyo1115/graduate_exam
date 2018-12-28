class ExamsController < ApplicationController
  def show
    @exam = Exam.offset( rand(Exam.count) ).first
  end

  def answer
  end
end

