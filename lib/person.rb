require 'pry'

class Person
  attr_accessor :bank_account , :happiness , :hygiene
  attr_reader :name
   @@all =[]
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @@all << self
  end

  def self.all
    @@all
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end
  #action methods

  def get_paid(salary)
    self.bank_account += salary
    self.happiness +=1
    "all about the benjamins"
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    [friend, self].each do |o|
      o.happiness +=3
    end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      [person, self].each do |o|
        o.happiness -= 2
      end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      [person,self].each do |o|
        o.happiness +=1
      end
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
