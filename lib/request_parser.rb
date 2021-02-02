# frozen_string_literal: true

module RequestParser
  def parse_params_query(request)
    Rack::Utils.parse_nested_query(request.query_string)
  end
end
