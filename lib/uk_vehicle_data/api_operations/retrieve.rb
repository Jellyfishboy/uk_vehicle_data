module UkVehicleData
    module APIOperations
        module Retrieve

            def retrieve params={}
                response = UkVehicleData.request(:get, "#{class_name}", params)
                return response
            end
        end
    end
end