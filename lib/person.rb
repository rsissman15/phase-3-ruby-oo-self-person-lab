# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize (name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
        name
    end
    def happiness=(happiness)
        @happiness = if happiness > 10
                       10
                     elsif happiness < 0
                       0
                    else
                       happiness
                     end
    end
    def hygiene=(hygiene)
        @hygiene= 
        if hygiene >10
            10
        elsif hygiene <0
            0
        else
            hygiene
        end     
    end

    def happy?
        happiness>7
    end
    
    def clean?
        hygiene>7
    end

    def get_paid(amount)
        @bank_account+=amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        '♪ another one bites the dust ♫'
    end

end

p1=Person.new("Stella")
