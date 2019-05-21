# frozen_string_literal: true

# course material
class MaterialsController < ApplicationController
  before_action :find_course
  before_action :find_material, only: %i[show edit update destroy]

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

  def update
    if @material.update(material_params)
      flash[:notice] = 'The material has been updated.'
      redirect_to [@course, @material]
    else
      flash[:error] = 'The material has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @material.destroy
    flash[:notice] = 'The course has been removed.'
    redirect_to @course
  end

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

  def find_material
    @material = @course.materials.find_by_id(params[:id])
  end
end
