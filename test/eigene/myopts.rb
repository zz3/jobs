require 'optparse'

options = {}
begin  
OptionParser.new do |opts|
  opts.banner = "Usage: myopts.rb [options]"
  opts.on("-v", "--verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
  opts.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
  end
  
end.parse!
rescue
  puts "an error occured"
end

