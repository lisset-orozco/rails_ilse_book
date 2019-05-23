# frozen_string_literal: true

# courses
class CoursesController < ApplicationController
  before_action :authenticate_admin!, only: %i[new create update destroy]
  before_action :authenticate_user_or_admin, only: :show
  before_action :find_course, only: %i[show edit update destroy]

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
      flash[:error] = 'The course has not been created.'
      render 'new'
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
      render 'edit'
    end
  end

  def destroy
    @course.destroy
    flash[:notice] = 'The course has been removed.'
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :description)
  end

  def find_course
    @course = Course.find_by_id(params[:id])
  end

  def authenticate_user_or_admin
    return if admin_signed_in? || user_signed_in?

    flash[:notice] = 'You need to login to see this information.'
    redirect_to root_url
  end
end
