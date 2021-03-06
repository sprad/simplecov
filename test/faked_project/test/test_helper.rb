require 'rubygems'
require 'bundler/setup'

# We're injecting simplecov_config via aruba in cucumber here
# depending on what the test case is...
begin
  require File.join(File.dirname(__FILE__), 'simplecov_config')
rescue LoadError => err
  $stderr.puts "No SimpleCov config file found!"
end

require 'faked_project'

require 'test/unit'

class Test::Unit::TestCase
end