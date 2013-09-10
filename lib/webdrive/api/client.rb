module Webdrive
  module API
    class Client

      def initialize(options = {})
        [:username, :password, :rpc_key, :auth_key].each do |credential|
          raise "#{credential} is required" if option[crendential].nil?
          instance_variable_set credential, options[crendential]
        end
        server = XMLRPC::Client.new_from_hash(host: 'cp.secureserver.co.nz', path: '/remote_cp_server/server.asys', use_ssl: true)
      end

    end
  end
end