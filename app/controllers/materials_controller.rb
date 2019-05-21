# frozen_string_literal: true

# course material
class MaterialsController < ApplicationController
  before_action :find_course, only: %i[new create update]
  before_action :material_params, only: %i[create update]

  def index; end

  def new
    @material = @course.materials.build
  end

  def create
    @material = @course.materials.build(material_params)

    if @material.save
      flash[:notice] = 'The file has been saved.'
      redirect_to @course
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update; end

  def destroy; end

  private

  def material_params
    params.require(:material).permit(
      :name,
      :description,
      :file
    )
  end

  def find_course
    @course = Course.find_by_id(params[:course_id])
  end
end
