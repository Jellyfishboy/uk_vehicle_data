$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "uk_vehicle_data/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "uk_vehicle_data"
  s.version     = UkVehicleData::VERSION
  s.authors     = ["Tom Dallimore"]
  s.email       = ["me@tomdallimore.com"]
  s.homepage    = "https://github.com/Jellyfishboy/uk_vehicle_data"
  s.summary     = "A Ruby wrapper for the UK VehicleData API"
  s.description = "A Ruby wrapper for the UK VehicleData API"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rest-client', '~> 2'
end
