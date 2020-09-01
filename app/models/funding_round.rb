class FundingRound

    attr_reader :startup, :vc, :type
    attr_accessor :investment

    @@all = []
    
    def initialize(startup,vc,type,investment)
        @startup = startup
        @vc = vc
        @type = type
        if investment.class == Float && investment > 0.0
            @investment = investment
        end
        self.class.all << self
    end

    def startup
        @startup
    end

    def venture_capitalist
        @vc
    end

    def type
        @type
    end

    def investment
        @investment
    end

    def self.all
        @@all
    end

end