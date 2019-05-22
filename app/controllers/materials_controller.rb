# frozen_string_literal: true

# course material
class MaterialsController < ApplicationController
  before_action :find_course
  before_action :find_material, only: %i[show edit update destroy]
  before_action :set_s3_direct_post, only: %i[new edit create update]

  def index; end

  def new
    @material = @course.materials.build
  end

  def create
    @material = @course.materials.build(material_params)

    if @material.save
      flash[:notice] = 'The material has been saved.'
      redirect_to @course
    else
      flash[:error] = 'The material has not been saved.'
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
    flash[:notice] = 'The material has been removed.'
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

  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}",
                                               success_action_status: '201',
                                               acl: 'public-read')
  end
end
