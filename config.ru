# frozen_string_literal: true

require './dependencies'

use Rack::Reloader, 0
use Rack::ContentType, 'application/json'
use Rack::Cache
use Rack::ConditionalGet
use Rack::ETag

use Rack::Auth::Basic do |username, password|
  username == 'test' && password == 'test'
end

map '/' do
  run HomeController.new
end

map '/search' do
  run SearchController.new
end
