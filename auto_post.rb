# ruby auto_post.rb
# 模拟发送post请求

require "uri"
require "net/http"

params =
  {
      "card_reply[name]" => "free",
      "card_reply[wish_language]" => "love",
      "card_reply[state]" => 1
  }
x = Net::HTTP.post_form(URI.parse('http://localhost:3000/cards/82/card_replies.json'), params)