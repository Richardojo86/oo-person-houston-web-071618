require 'pry'

class Person
  #def initialize(name)
  #@name = name
  #end
  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = 25
   @happiness = 8
   @hygiene = 8
  end

  def name
    @name
  end

def bank_account
  @bank_account
end
    def name
      @name
    end

# getter/reader
  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  #setter/writer
  def happiness=(new_happiness)
    if new_happiness < 0
      @happiness = 0
    elsif new_happiness > 10
      @happiness = 10
    else
      @happiness = new_happiness
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene < 0
      @hygiene = 0
    elsif new_hygiene > 10
      @hygiene = 10
    else
      @hygiene = new_hygiene
    end
  end

  def bank_account=(new_bank_account)
    @bank_account = new_bank_account
  end

  #actions methods
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

  def get_paid(salary_amount)
    salary_amount += @bank_account
      "all about the benjamins"
  end

  def take_bath
    @hygiene + 4
      "Rub-a-dub just relaxing in the tub"
  end

  def work_out
    @happiness + 2
    @hygiene- 3
    "another one bites the dust"
  end

end

#person1 = Person.new("Becci")
