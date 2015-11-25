
class Coffee

    def initialize(name)
      @name = name
      @sips = 3
    end

    def full?
      @sips == 3
    end

    def slurp!  # slurp makes full false
      @sips -= 1
    end

    def empty? 
      @sips.zero?
    end
end

