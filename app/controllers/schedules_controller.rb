class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :update, :destroy]

  # GET /schedules
  def index
    if params[:student_id]
      @schedules = Schedule.where(student_id: params[:student_id])
      render json: @schedules.to_json(include: {:course => {include: {:instructor => {}, :department => {}}}})
    elsif params[:course_id]
      @schedules = Schedule.where(course_id: params[:course_id])
      render json: @schedules.to_json(include: :student)
    else
      @schedules = Schedule.all
      render json: @schedules
    end
  end

  # GET /schedules/1
  def show
    render json: @schedule
  end

  # POST /schedules
  def create
    course = Course.find(schedule_params[:course_id]);
    if course.enrolled >= course.cap
      render json: {message: "Course is full"}, status: :accepted
    else
      @schedule = Schedule.new(schedule_params)
      if @schedule.save
        updateCourseCount(schedule_params[:course_id])
        render json: @schedule, status: :created
      else
        render json: @schedule.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /schedules/1
  def update
    if @schedule.update(schedule_params)
      render json: @schedule
    else
      render json: @schedule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schedules/1
  def destroy
    course_id = @schedule.course_id
    @schedule.destroy
    updateCourseCount(course_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def schedule_params
      params.require(:schedule).permit(:student_id, :course_id)
    end
end
