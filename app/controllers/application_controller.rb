class ApplicationController < ActionController::API

  # skip_before_filter :verify_authenticity_token

  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

  def cors_preflight_check
    if request.method == 'OPTIONS'
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, Token'
      headers['Access-Control-Max-Age'] = '1728000'

      render :text => '', :content_type => 'text/plain'
    end
  end

  def authenticate_token
    puts "AUTHENTICATE JWT"
    render json: { status: 401, message: 'Unauthorized' } unless decode_token(bearer_token)
  end

  def bearer_token
     puts "BEARER TOKEN"
     puts header = request.env["HTTP_AUTHORIZATION"]

     pattern = /^Bearer /
     puts "TOKEN WITHOUT BEARER"
     puts header.gsub(pattern, '') if header && header.match(pattern)
     header.gsub(pattern, '') if header && header.match(pattern)
   end

   def decode_token(token_input)
     puts "DECODE TOKEN, token input: #{token_input}"
     puts token = JWT.decode(token_input, ENV['JWT_SECRET'], true)
     JWT.decode(token_input, ENV['JWT_SECRET'], true)
   rescue
     render json: { status: 401, message: 'Unauthorized' }
   end

   def get_current_user
     return if !bearer_token
     decoded_jwt = decode_token(bearer_token)
     Student.find(decoded_jwt[0]["user"]["id"])
   end

   def updateCourseCount(id)
     count = Schedule.where(:course_id => id).count
     Course.find(id).update(enrolled: count)
   end

end
