class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []
    
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        self.class.all << self
    end

    def name
        @name
    end

    def founder
        @founder
    end

    def domain
        @domain
    end

    def pivot(domain,name)
        self.name = name
        self.domain = domain
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        self.all.find {|startup| startup.founder == founder}
    end

    def self.domains
        self.all.collect {|startup| startup.domain}
    end

    def sign_contract(vc,type,investment)
        FundingRound.new(self,vc,type,investment)
    end

    def rounds 
        FundingRound.all.select {|round| round.startup == self}
    end
    
    def num_funding_rounds
        self.rounds.length
    end

    def total_funds 
       (self.rounds.collect {|round| round.investment}).sum.round(2)
    end

    def investors
        (self.rounds.collect {|round| round.vc}).uniq
    end

    def big_investors
        bigs = []
        self.investors.each do |i|
        if VentureCapitalist.tres_commas_club.include?(i) == true 
            bigs << i
            end
        end
        bigs
    end
end
