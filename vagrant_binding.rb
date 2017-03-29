require "vagrant_binding/version"
require 'rails/commands/server'
#TODO: move code into vagrant_binding/server.rb 
module Rails
  class Server
    def default_options
      if Rails.env.development?
      	super.merge(Host:  '0.0.0.0')
      end || super
    end
  end
end
