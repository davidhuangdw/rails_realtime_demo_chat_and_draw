# This file is used by Rack-based servers to start the application.
require 'faye'
Faye::WebSocket.load_adapter('thin')
require File.expand_path('../config/initializers/faye_token.rb', __FILE__)

class ServerAuth
  def valid(message)
    return true if message['channel'] =~ %r{^/meta/}
    message['ext'] && message['ext']['auth_token'] == FAYE_TOKEN
  end
  def incoming(message, callback)
    message['error'] = "Invalid authentication token" unless valid(message)
    callback.call(message)
  end
end

bayeux = Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)
bayeux.add_extension(ServerAuth.new)
run bayeux
