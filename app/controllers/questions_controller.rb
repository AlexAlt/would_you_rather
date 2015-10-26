class QuestionsController < ApplicationController
  def index
    @questions = Question.all

  end
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      flash[:notice] = "What are you doing"
      render :create
    end
  end

  private
  def question_params
    params.require(:question).permit(:option_one, :option_two, :image_one, :image_two)
  end
end
