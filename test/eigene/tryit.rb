def rt
  s = String.new('25')
  puts 'hallo'
  if s.respond_to?('to_i')  
    puts s.to_i
  end
end

def getops
  ops = { "1" => "eins", "2" => "zwei" }
end

def hashes
  puts "ops = #{getops}"
  getops.each do |op|
    puts op[0]
  end
    
end

rt
hashes