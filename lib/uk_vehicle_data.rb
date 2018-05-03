require 'rest-client'

require 'uk_vehicle_data/api_operations/retrieve'

require 'uk_vehicle_data/api_resource'
require 'uk_vehicle_data/vehicle_data'

module UkVehicleData
    API_BASE = "https://uk1.ukvehicledata.co.uk/api/datapackage/"

    class UkVehicleDataError < StandardError
    end

    class AuthenticationError < UkVehicleDataError; end
    class ConfigurationError < UkVehicleDataError; end

    class << self

        def api_key
            defined? @api_key and @api_key or raise(
                ConfigurationError, "UkVehicleData api key not configured"
            )
        end
        attr_writer :api_key

        def request method, resource, params={}
            vd_api_key = params[:auth_api_key] || UkVehicleData.api_key

            defined? method or raise(
                ArgumentError, "Request method has not been specified"
            )
            defined? resource or raise(
                ArgumentError, "Request resource has not been specified"
            )
            if method == :get 
                headers = { accept: :json, content_type: :json }.merge({params: params})
                payload = nil
            else
                headers = { accept: :json, content_type: :json }
                payload = params
            end
            RestClient::Request.new({
                method: method,
                url: API_BASE + resource,
                payload: payload ? payload.to_json : nil,
                headers: headers
            }).execute do |response, request, result|
                str_response = response.to_str        
                str_response.blank? ? '' : JSON.parse(str_response)
            end
        end
    end
end
