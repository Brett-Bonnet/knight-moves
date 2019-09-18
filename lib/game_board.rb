class GameBoard
  attr_reader :board

    def initialize
      @knight = Knight.new
      @search_tree = SearchTree.new
    end
    
    def knight_moves(start, goal)
      @start = start
      if valid_move?(start) && valid_move?(goal)
        first_node = @search_tree.append_tree(nil, start)
        add_moves(first_node)
        search = bfs(goal)
      else puts "one of your coordinates is not valid"
      end
    end

    def add_moves(root)
      moves = @knight.available_moves(root.value) 
      moves.each {|move| @search_tree.append_tree(root, move)}
    end


    def valid_move?(start)
      if start.all? {|num| num >= 0 && num <= 7}
        true
      else
        false
      end
    end

  def bfs(value)
    return @search_tree.root if @search_tree.root.value == value
    list = []
    current = @search_tree.root
    until current.value == value
      current.children.each {|node| list << node}
      current = list.shift
      add_moves(current)
      return nil if current.nil?
    end
    current
    result(current)
  end

  def result(goal)
    moves = []
    current = goal
    until current.value == @start
      moves << current.value
      current = current.parent
    end
    current.value
    moves << current.value
    puts "You made it in #{moves.length} moves! Here's your path:"
    moves.reverse.each {|move| puts "#{move}"}
  end
end
