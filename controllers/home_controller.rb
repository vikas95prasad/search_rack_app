# frozen_string_literal: true

class HomeController < BaseController
  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new

    if request.get? && request.path_info == '/'
      response.status = 200
      response.write(index_response)
    else
      invalid_request(response)
    end
    response.finish
  end
end
