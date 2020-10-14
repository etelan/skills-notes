class PiggyBank

  attr_reader :coins, :broke

  def initialize
    @coins = 0
    @broke = false
  end


  attr_writer :coins

  def deposit(num)
    if !(@broke) then @coins += num end
  end

  def cling
    if !(@broke) then
      print (if @coins > 0 then "cling" else "silence" end)
    end
  end

  def smash
    if !(@broke) then
       msg = "You now have " + @coins.to_s + " amount of coins."
       print msg
       @broke = true
    end
  end
end
