require 'rubygems'
require 'id3lib'

allfiles = Dir["./files/**/*"]

allfiles.each do |foo|
  if File.extname(foo) == ".mp3"
    tag = ID3Lib::Tag.new(foo)
    unless tag.title == nil
      puts tag.title
    else
      puts "** title not set for " + foo
    end
  else
    puts "\t" + foo + " is not an mp3 file"
  end
end
