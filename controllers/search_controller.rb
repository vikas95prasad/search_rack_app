# frozen_string_literal: true

class SearchController < BaseController
  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new

    if request.get?
      params = parse_params_query(request)
      users = UserModel.new(params).search
      respond(users, response)
    else
      invalid_request(response)
    end
    response.finish
  end
end
