class VentureCapitalist 

    attr_accessor :name, :worth

    @@all = []
    
    def initialize(name,worth)
        @name = name
        @worth = worth
        self.class.all << self
    end

    def name
        @name
    end

    def total_worth
        @worth
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|vc| vc.worth > 49}
    end

    def offer_contract(startup,type,investment)
            FundingRound.new(startup,self,type,investment)
    end

    def funding_rounds
        FundingRound.all.select {|round| round.vc == self}
    end

    def portofolio
        (self.funding_rounds.collect {|round| round.startup}).uniq
    end

    def biggest_investment
        big_round = 0
       self.funding_rounds.each do |rounds|
            if big_round < rounds.investment
                big_round = rounds.investment
            end
        end
        big_round
    end

    def invested(domain)
       mat_dom =  self.funding_rounds.select {|round| round.startup.domain == domain}
       final_arr = mat_dom.collect {|round| round.investment}
       final_arr.sum
    end
end
