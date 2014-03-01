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

# 当模拟的请求需要验证时，可以在控制器中加入skip_before_filter :verify_authenticity_token, :only => [:create]
