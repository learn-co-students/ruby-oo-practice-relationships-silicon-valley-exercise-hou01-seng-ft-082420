require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#variables start
s1 = Startup.new("Facebook", "Zuck", "Social")
s2 = Startup.new("Tesla", "Elon", "Cars")
s3 = Startup.new("Amazon", "Jeff", "E-Commerce")
s4 = Startup.new("Facebook", "Tom", "Social")

v1 = VentureCapitalist.new("Buffet", 48)
v2 = VentureCapitalist.new("Gates", 62)
v3 = VentureCapitalist.new("Parker", 50)

round1 = FundingRound.new(s1,v3,"equity", 25.2)
round2 = FundingRound.new(s3,v1,"merger", 30.4)
round3 = FundingRound.new(s2,v2,"stock", 60.8)
round6 = FundingRound.new(s3,v2,"crypto", 8.9)
round1 = FundingRound.new(s1,v3,"equity", 25.0)
#variables end

binding.pry
0 #leave this here to ensure binding.pry isn't the last line