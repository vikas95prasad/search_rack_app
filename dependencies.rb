# frozen_string_literal: true

require 'rack'
require 'rack/cache'
require 'json'
require 'yaml'
require 'mysql2'
require 'byebug'

require './lib/string'
require './lib/message'
require './lib/request_parser'
require './lib/response_generator'

require './models/base_model'
require './models/user_model'

require './controllers/base_controller'
require './controllers/home_controller'
require './controllers/search_controller'
