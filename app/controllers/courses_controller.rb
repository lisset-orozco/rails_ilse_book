# frozen_string_literal: true

# courses
class CoursesController < ApplicationController
  before_action :find_course, only: %i[show edit update]

  def index
    @courses = Course.all
  end

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

  def update
    if @course.update(course_params)
      flash[:notice] = 'The course has been updated.'
      redirect_to @course
    else
      flash[:error] = 'The course has not been updated.'
      render action: 'edit'
    end
  end

  def destroy; end

  private

  def course_params
    params.require(:course).permit(:name, :description)
  end

  def find_course
    @course = Course.find_by_id(params[:id])
  end
end
