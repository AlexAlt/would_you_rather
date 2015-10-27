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
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])
    if params[:which] == @question.option_one
      @option = 'one'
      @option_string = 'points_one'
      @question.points_one += 1
      @points = @question.points_one
    elsif  params[:which] == @question.option_two
      @option = 'two'
      @question.points_two += 1
      @points = @question.points_two
    else
    end
    if @question.save
      respond_to do |format|
        format.html {redirect_to questions_path}
        format.js
      end
    else
    redirect_to root_path

    end
  end

  private
  def question_params
    params.require(:question).permit(:option_one, :option_two, :image_one, :image_two)
  end
end
