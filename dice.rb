class Die

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat x
    if x>0 && x<=6
      @number_showing = x
    else
      "cheating failed."
    end
  end
end

die = Die.new

die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
puts die.cheat(7)
puts die.cheat(6)