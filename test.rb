require 'mail'
require 'postal-mailgem'
Mail.defaults do
  delivery_method :postal, :server_key => 'xxx'
end
message = Mail.new
message.to "invalid@pat.infra.atech.io"
message.from "blah@test.postal.io"
message.body "Hello there!"
message.deliver
