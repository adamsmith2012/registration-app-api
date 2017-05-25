class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]
  before_action :authenticate_token, except: [:login, :create]
  before_action :authorize_user, except: [:login, :create, :index]

  def login
    student = Student.find_by(username: params[:student][:username])
    if student && student.authenticate(params[:student][:password])
      token = create_token(student.id, student.username)
      render json: {status: 200, token: token, student: student}
    else
      render json: {status: 401, message: "Unauthorized"}
    end
  end

  # GET /students
  def index

    if params[:course_id]
      @students = Course.find(params[:course_id]).students
      render json: @students
    else
      @students = Student.all
      render json: @students
    end
  end

  # GET /students/1
  def show
    render json: @student
  end

  # POST /students
  def create
    @student = Student.new(student_params)

    if @student.save
      render json: @student, status: :created, location: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /students/1
  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_params
      params.require(:student).permit(:username, :password_digest, :first_name, :last_name)
    end

    # Generate a JavaScript Web Token
    def create_token(id, username)
      JWT.encode(payload(id, username), ENV['JWT_SECRET'], 'HS256')
    end

    # Returns a hash container student info
    def payload(id, username)
      {
        exp: (Time.now + 30.minutes).to_i,
        iat: Time.now.to_i,
        iss: ENV['JWT_ISSUER'],
        user: {
          id: id,
          username: username
        }
      }
    end

    # Restrict a user from user-params routes if they are the wrong user
    def authorize_user
      puts "AUTHORIZE USER"
      puts "user id: #{get_current_user.id}"
      puts "params: #{params[:id]}"
      render json: { status: 401, message: 'Unauthorized' } unless get_current_user.id == params[:id].to_i
    end
end
