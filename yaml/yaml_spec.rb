require "rspec"
require "yaml"

describe "My behaviour" do

  it "should do something" do

    @h_config = YAML::load_file(File.join('yaml','config.yaml'))

    puts "myfile exists? #{File.exists?(@h_config["myfile"])}, #{@h_config["myfile"]}"
    puts "myfolder exists? #{File.exists?(@h_config["myfolder"])}, #{@h_config["myfolder"]}"

  end
end