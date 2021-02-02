# frozen_string_literal: true

module ResponseGenerator
  def index_response
    JSON.generate({ status: 200, message: Message.index_page })
  end

  def create_success_response(data)
    JSON.generate({ status: 200, results: data })
  end

  def invalid_response
    JSON.generate({ status: 404, message: Message.status_text(404) })
  end

  def not_found_response
    JSON.generate({ status: 400, message: Message.status_text(400) })
  end

  def invalid_credentials
    JSON.generate({ status: 401, message: Message.status_text(401) })
  end
end
