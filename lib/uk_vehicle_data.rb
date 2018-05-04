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
            vd_api_key = params[:auth_apikey] || UkVehicleData.api_key
            vd_api_nullitems = params[:api_nullitems] || 1
            vd_version = params[:v] || 2

            params.merge!({api_nullitems: vd_api_nullitems, v: vd_version, auth_apikey: vd_api_key})

            defined? method or raise(
                ArgumentError, "Request method has not been specified"
            )
            defined? resource or raise(
                ArgumentError, "Request resource has not been specified"
            )

            headers = { accept: :json, content_type: :json }.merge({params: params})

            RestClient::Request.new({
                method: method,
                url: API_BASE + resource,
                headers: headers
            }).execute do |response, request, result|
                str_response = response.to_str        
                str_response.blank? ? '' : JSON.parse(str_response)
            end
        end
    end
end
