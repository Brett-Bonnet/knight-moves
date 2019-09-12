class Knight
attr_reader :confirmed
    def initialize
    end
    def available_moves(start)
      @possible = []
      @confirmed = []
      @start = start
      @possible << [@start[0] + 1, @start[1] + 2]
      @possible << [@start[0] + 2, @start[1] + 1]        
      @possible << [@start[0] + 2, @start[1] - 1]
      @possible << [@start[0] + 1, @start[1] - 2]
      @possible << [@start[0] - 1, @start[1] - 2]
      @possible << [@start[0] - 2, @start[1] - 1]
      @possible << [@start[0] - 2, @start[1] + 1]
      @possible << [@start[0] - 1, @start[1] + 2]
      validate_moves(@possible)
      return @confirmed
    end

    def validate_moves(array)
        array.each_with_index do |sub_array, index|
          @confirmed.push(sub_array) if sub_array.all? {|num| num >= 0 && num < 7}
        end
    end
      

  end
