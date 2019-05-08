#!/usr/bin/env ruby

require 'yaml'

contents = File.read(ARGV[0])
translation = YAML.load File.read(ARGV[1])

translation.each_pair {|from, to|
  contents = contents.gsub(/from/, to)
}
puts contents

