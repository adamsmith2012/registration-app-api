class WelcomeController < ApplicationController

  def index
    render json: { status: 200, message: "CourseWEB API" }
  end

end
