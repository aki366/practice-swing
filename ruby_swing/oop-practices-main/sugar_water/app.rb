require 'byebug'

require_relative "./director.rb"
require_relative "./sugar_water.rb"
require_relative "./sugar_water_builder.rb"

builder = SugarWaterBuilder.new
director = Director.new(builder)
byebug
director.cook

p builder.result
