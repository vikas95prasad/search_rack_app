# frozen_string_literal: true

class BaseModel
  def initialize
    @db_client = Mysql2::Client.new(
      host: 'localhost',
      username: 'username',
      password: 'password',
      database: 'db'
    )
  end
end
