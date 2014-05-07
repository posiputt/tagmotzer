require 'rubygems'
require 'taglib'

allfiles = Dir[".files/*"]

allfiles.each do |foo|
  puts foo
end
