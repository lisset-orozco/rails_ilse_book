# frozen_string_literal: true

# courses
class CoursesController < ApplicationController
  # before_action :course_params, only: %i[index show]
  def index; end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      flash[:notice] = 'The course has been created.'
      redirect_to @course
    else
      flash[:error] = 'The course has not been created'
      render action: 'new'
    end
  end

  def show; end

  def edit; end

  def update; end

  def destroy; end

  private

  def course_params
    puts params
    params.require(:course).permit(:name, :description)
  end
end
