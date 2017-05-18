require 'pry'

# your code goes here
class Person

attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    if value >= 0 && value <= 10
      @happiness = value
    elsif value >= 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    end

  def hygiene=(value)
    if value >= 0 && value <= 10
      @hygiene = value
    elsif value < 0
      @hygiene = 0
    elsif value >= 10
      @hygiene = 10
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(pay)
    @bank_account += pay
    'all about the benjamins'
  end

# defines method
  def take_bath
# first this line calls the custom hygiene setter method, which already has the boundaries built in.
# for example, not to go above ten or below zero. it calls the method on the instance that's
# active now, like a specific person named Tom for example.
# Next, it tries to increase the hygience number by four, in the context of the conditions the tests defined.
# It does that by "setting" the hygiene to a new level, which is just the same old hygiene level + 4.
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene - 3)
    self.happiness=(@happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(@happiness + 3)
    friend.happiness=(friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
      when "politics"
        self.happiness=(self.happiness - 2)
        person.happiness=(person.happiness - 2)
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness=(self.happiness + 1)
        person.happiness=(person.happiness + 1)
        'blah blah sun blah rain'
      else
          'blah blah blah blah blah'
    end
  end


end

end
