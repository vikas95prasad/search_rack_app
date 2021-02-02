# frozen_string_literal: true

class UserModel < BaseModel
  attr_accessor :name, :limit, :offset

  def initialize(params)
    self.name = params['name']
    self.limit = params['limit'].to_s.presence || 10
    self.offset = params['offset'].to_s.presence || 0
    super()
  end

  def search
    @db_client.query(sql_for_user_search).entries
  rescue StandardError
    []
  ensure
    @db_client.close
  end

  private

  def sql_for_user_search
    <<-SQL
      SELECT *
      FROM users
      WHERE first_name like '%#{name}%'
      LIMIT #{limit} OFFSET #{offset}
    SQL
  end
end
