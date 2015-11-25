class ComputerPlayer
  def initialize() 
    @name = "computer"
    @valid_pick = (1..9).to_a
  end

  def make_pick
    pick = @valid_pick.sample
    pick
  end

   def marker=(marker) 
    @marker=marker
  end

  def marker
    @marker
  end

  def name
    @name
  end
end