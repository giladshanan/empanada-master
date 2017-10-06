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

  def send_form
    headers = {
        "Content-Type" => 'application/json'
    }
    body = {
        "text" => "Would you like to order an empanada?",
        "response_type" => "in_channel",
        "attachments" => [
            {
                "text" => "Choose an empanada and how many you want:",
                "fallback" => "If you could read this message, you'd be choosing something fun to do right now.",
                "color" => "#3AA3E3",
                "attachment_type" => "default",
                "callback_id" => "order",
                "actions" => [
                    {
                        "name" => "beef",
                        "text" => "How many beef?",
                        "type" => "select",
                        "options" => [
                            {
                                "text" => "0",
                                "value" => "nil"
                            },
                            {
                                "text" => "1",
                                "value" => "1"
                            },
                            {
                                "text" => "2",
                                "value" => "2"
                            },
                            {
                                "text" => "3",
                                "value" => "3"
                            },
                            {
                                "text" => "4",
                                "value" => "4"
                            }
                        ]
                    },
                  {
                        "name" => "malbec_beef",
                        "text" => "How many malbec beef?",
                        "type" => "select",
                        "options" => [
                            {
                                "text" => "0",
                                "value" => "nil"
                            },
                            {
                                "text" => "1",
                                "value" => "1"
                            },
                            {
                                "text" => "2",
                                "value" => "2"
                            },
                            {
                                "text" => "3",
                                "value" => "3"
                            },
                            {
                                "text" => "4",
                                "value" => "4"
                            }
                        ]
                    },
                  {
                        "name" => "spinach",
                        "text" => "How many spinach?",
                        "type" => "select",
                        "options" => [
                            {
                                "text" => "0",
                                "value" => "nil"
                            },
                            {
                                "text" => "1",
                                "value" => "1"
                            },
                            {
                                "text" => "2",
                                "value" => "2"
                            },
                            {
                                "text" => "3",
                                "value" => "3"
                            },
                            {
                                "text" => "4",
                                "value" => "4"
                            }
                        ]
                    },
                  {
                        "name" => "corn",
                        "text" => "How many corn?",
                        "type" => "select",
                        "options" => [
                            {
                                "text" => "0",
                                "value" => "nil"
                            },
                            {
                                "text" => "1",
                                "value" => "1"
                            },
                            {
                                "text" => "2",
                                "value" => "2"
                            },
                            {
                                "text" => "3",
                                "value" => "3"
                            },
                            {
                                "text" => "4",
                                "value" => "4"
                            }
                        ]
                    },
                  {
                        "name" => "nutella",
                        "text" => "How many nutella?",
                        "type" => "select",
                        "options" => [
                            {
                                "text" => "0",
                                "value" => "nil"
                            },
                            {
                                "text" => "1",
                                "value" => "1"
                            },
                            {
                                "text" => "2",
                                "value" => "2"
                            },
                            {
                                "text" => "3",
                                "value" => "3"
                            },
                            {
                                "text" => "4",
                                "value" => "4"
                            }
                        ]
                    },

                ]
            }
        ]
    }
    self.class.post("#{env_it_dude}", :headers => headers, :body => body.to_json)
  end

end



