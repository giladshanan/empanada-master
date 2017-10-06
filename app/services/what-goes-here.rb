class Party
  include HTTParty
  base_uri 'https://hooks.slack.com/services'

  def message(message_body)
    headers = {
        "Content-Type" => 'application/json'
    }
    body = {
      "text" => message_body
    }
    self.class.post("#{env_it_dude}", :headers => headers, :body => body.to_json)
  end


end
