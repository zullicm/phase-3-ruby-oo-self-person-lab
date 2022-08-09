class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else 
      @happiness = happiness
    end
  end
  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else 
      @hygiene = hygiene
    end
  end

  def happy?
    happiness > 7 ? true : false
  end

  def clean?
    hygiene > 7 ? true : false
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    hygiene=(self.hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    hygiene=(self.hygiene -= 3)
    happiness=(self.happiness += 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    happiness=(self.happiness += 3)
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      happiness=(self.happiness -= 2)
      friend.happiness = friend.happiness - 2
      'blah blah partisan blah lobbyist'
    when "weather"
      happiness=(self.happiness += 1)
      friend.happiness = friend.happiness + 1
      'blah blah sun blah rain'
    else 
      'blah blah blah blah blah'   
    end
  end

end