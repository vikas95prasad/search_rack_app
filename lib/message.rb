# frozen_string_literal: true

class Message
  MESSAGES = YAML.safe_load(File.open('lib/status_message.yml'))

  def self.status_text(status_code)
    MESSAGES[status_code]
  end

  def self.index_page
    'Welcome to USER SEARCH Rack App. On navigating to URL: /search/name=vikas.' \
      " This will return list of users with 'vikas' name." \
      ' Pre-requist: Update the credentials of your db in BaseModel'
  end
end
