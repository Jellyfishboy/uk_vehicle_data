## UkVehicleData

[![Gem Version](https://badge.fury.io/rb/uk_vehicle_data.svg)](https://badge.fury.io/rb/uk_vehicle_data)

A Ruby wrapper for the UK VehicleData API.

[Release Notes](http://release.tomdallimore.com/projects/ukvehicledata)

## Installation

Add module to your Gemfile:

```ruby
gem 'uk_vehicle_data'
```

Then run bundle to install the Gem:

```sh
bundle install
```

Set up an initializer file with your UKVehicleData API key:

```ruby
UkVehicleData.api_key  = 'uk_vehicle_data_api_key'
```
e.g. *config/initializers/uk_vehicle_data.rb*

## Versioning

UkVehicleData Ruby wrapper follows Semantic Versioning 2.0 as defined at
<http://semver.org>.

## How to contribute

* Fork the project
* Create your feature or bug fix
* Add the requried tests for it.
* Commit (do not change version or history)
* Send a pull request against the *development* branch

## Copyright
Copyright (c) 2018 [Tom Dallimore](http://www.tomdallimore.com/?utm_source=ukvehicledata&utm_medium=website&utm_campaign=tomdallimore) ([@tom_dallimore](http://twitter.com/tom_dallimore))  
Licenced under the MIT licence.

