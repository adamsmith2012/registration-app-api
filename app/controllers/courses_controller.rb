class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]

  # GET /courses
  def index
    if params[:term_id] && params[:student_id]
      @courses = Student.find(params[:student_id]).courses.where(term_id: params[:term_id])
      render json: @courses.to_json(include: [:meetings => {include: [:room => {include: :building}]}], include: :instructor)
    elsif params[:student_id]
      @courses = Student.find(params[:student_id]).courses
      render json: @courses.to_json(include: [:meetings => {include: [:room => {include: :building}]}], include: :instructor)
    else
      @courses = Course.all
      render json: @courses.to_json(include: [:meetings => {include: [:room => {include: :building}]}], include: :instructor)
    end
  end

  # GET /courses/1
  def show
    render json: @course.to_json(include: [:meetings => {include: [:room => {include: :building}]}], include: :instructor)
  end

  # POST /courses
  def create
    @course = Course.new(course_params)

    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:name, :description, :department_id, :instructor_id, :term_id)
    end
end
