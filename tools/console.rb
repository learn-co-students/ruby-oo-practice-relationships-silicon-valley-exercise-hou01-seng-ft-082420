require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Startup.new("Piepie", "Doug", "Piepie.com")

vc1 = VentureCapitalist.new("Russ H", 1000000001)
vc2 = VentureCapitalist.new("Doug", 500000)

fr1 = FundingRound.new(s1, vc1, "Series A", 100000.0)
fr2 = FundingRound.new(s1, vc2, "Series A", 5000.0)
fr3 = FundingRound.new(s1, vc1, "Series B", 40000)
fr4 = FundingRound.new(s1, vc1, "Series C", 7000000)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line