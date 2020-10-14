class PiggyBank

  attr_reader :coins, :broke

  def initialize
    @coins = 0
    @broke = false
  end


  attr_writer :coins

  def deposit(num)
    if !(@broke) then @coins += num else raise "no bank" end
  end

  def cling
    if !(@broke) then
      print (if !(empty?) then "cling" else "silence" end)
    else
      raise "no bank"
    end
  end

  def smash
    if !(@broke) then
       msg_printer
       @broke = true
   else
     raise "no bank"
   end
  end

  # Single Responsibility Making
  private
  def msg_printer
    print "You now have " + @coins.to_s + " amount of coins."
  end

  def empty?
    return (if @coins == 0 then true else false end)
  end

end
