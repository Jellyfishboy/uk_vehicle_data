require 'rest-client'

module Ukvehicledata
    API_BASE = "https://uk1.ukvehicledata.co.uk/api/datapackage/"

    class UkvehicledataError < StandardError
    end

    class AuthenticationError < UkvehicledataError; end
    class ConfigurationError < UkvehicledataError; end

    class << self

        def request
         
        end

        def datetime_format datetime
            datetime.strftime("%Y-%m-%d %T")
        end
    end
end
