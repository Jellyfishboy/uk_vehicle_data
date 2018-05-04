## UK Vehicle Data

[![Gem Version](https://badge.fury.io/rb/uk_vehicle_data.svg)](https://badge.fury.io/rb/uk_vehicle_data)

A Ruby wrapper for the UK Vehicle Data API.

[Release Notes](http://release.tomdallimore.com/projects/uk-vehicle-data)

## Installation

Add module to your Gemfile:

```ruby
gem 'uk_vehicle_data'
```

Then run bundle to install the Gem:

```sh
bundle install
```

Set up an initializer file with your UK Vehicle Data API key:

```ruby
UkVehicleData.api_key  = 'uk_vehicle_data_api_key'
```
e.g. *config/initializers/uk_vehicle_data.rb*

## Usage

This gem provides access to a collection of data packages within the UK Vehicle Data API.

### VehicleData

Retrieve vehicle data via VRM.

```ruby
UkVehicleData::VehicleData.retrieve(params)
```

Example:
```ruby
UkVehicleData::VehicleData.retrieve(key_VRM: 'AX04DHA')
```

### On request API key

This gem allows you to set the api key on a per request basis.

```ruby
UkVehicleData::VehicleData.retrieve(key_VRM: 'AX04DHA', auth_apikey: 'custom_api_key')
```

## Versioning

UK Vehicle Data Ruby wrapper follows Semantic Versioning 2.0 as defined at
<http://semver.org>.

## How to contribute

* Fork the project
* Create your feature or bug fix
* Add the requried tests for it.
* Commit (do not change version or history)
* Send a pull request against the *development* branch

## Copyright
Copyright (c) 2018 [Tom Dallimore](http://www.tomdallimore.com/?utm_source=uk_vehicle_data&utm_medium=website&utm_campaign=tomdallimore) ([@tom_dallimore](http://twitter.com/tom_dallimore))  
Licenced under the MIT licence.

