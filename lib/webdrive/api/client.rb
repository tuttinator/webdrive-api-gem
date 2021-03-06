module Webdrive
  module API
    class Client

      # As the auth key can change depending on IP address
      # this class will provide a writer method in case
      # your IP address changes
      attr_accessor :auth_key

      # Readers for :rpc_key, :username and :password
      # theoretically these shouldn't need to be changed
      # after the class is initialised
      attr_reader :rpc_key, :username, :password

      # Public: Constructor
      #
      # options - a Hash with these keys: :username, :password, :rpc_key, :auth_key
      def initialize(options = {})
        [:username, :password, :rpc_key, :auth_key].each do |credential|
          raise "#{credential} is required" if option[crendential].nil?
          instance_variable_set credential, options[crendential]
        end
        @server = XMLRPC::Client.new_from_hash(host: 'cp.secureserver.co.nz', path: '/remote_cp_server/server.asys', use_ssl: true)
      end

      def call(*method)
        @server.call(@rpc_key, @auth_key, method)
      end

      def login(*options)
        username, password = extract_options(:username, :password, options)
        call 'login', username, password
      end

      private

      def extract_options(*keys, values)
        values = values.last if values.length == 1
        if values.is_a? Hash
          keys.map do |option|
            values[option]
          end
        else
          values
        end
      end

    end # Client class
  end # API module
end # Webdrive