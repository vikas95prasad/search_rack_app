# frozen_string_literal: true

class BaseController
  include ResponseGenerator
  include RequestParser

  def respond(data, response)
    return data_not_found(response) if data.empty?

    response.write(create_success_response(data))
  end

  def invalid_request(response)
    response.status = 404
    response.write(invalid_response)
  end

  def data_not_found(response)
    response.status = 400
    response.write(not_found_response)
  end
end
