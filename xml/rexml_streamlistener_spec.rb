require "rspec"
require "rexml/document"
require "rexml/streamlistener"

class MyStreamListener
  include REXML::StreamListener

  def initialize
    puts "initialize"
  end

  def tag_start(a, b)
    puts "#{a}, #{b}"
  end

  def tag_end(a)
    puts "#{a}"
  end

  def method_missing(name, *args)
    puts "in method_missing"
  end

end

describe "My behaviour" do

  it "should do something" do
    o_file = File.open(File.join("xml", "books.xml"))
    o_stream_listener = ::MyStreamListener.new()
    REXML::Document.parse_stream(o_file, o_stream_listener)
  end
end