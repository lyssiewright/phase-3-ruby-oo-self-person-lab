# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account

    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)

    end

    def hygiene
        @hygiene
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account = self.bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        friend.happiness = friend.happiness + 3
        self.happiness = self.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness = friend.happiness - 2
            self.happiness = self.happiness - 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            friend.happiness = friend.happiness + 1
            self.happiness = self.happiness + 1
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end
    end
 
    
    
end

# p1 = Person.new("Lyssie", 25, 8, 8)
# p1.get_paid(12)

