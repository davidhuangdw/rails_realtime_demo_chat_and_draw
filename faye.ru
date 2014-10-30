# This file is used by Rack-based servers to start the application.
require 'faye'
Faye::WebSocket.load_adapter('thin')

bayeux = Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)
run bayeux
