class GameBoard
  attr_reader :board

    def initialize
      @knight = Knight.new
      @search_tree = SearchTree.new
    end
    
    def knight_moves(start, goal)
      if valid_move?(start) && valid_move?(goal)
        find_goal(start, goal)
      else puts "one of your coordinates is not valid"
      end
    end


    def valid_move?(start)
      if start.all? {|num| num >= 0 && num <= 7}
        true
      else
        false
      end
    end

    def find_goal(node=start, goal)
     moves = 1
      if append_tree(@knight.available_moves(node)).include?(goal)
       puts "success in #{moves} move"
       true
      else
        append_tree(@knight.available_moves(node)).each do |array|
          break if find_goal(array, goal)
          moves += 1
        end
      end
    end

    def append_tree(array)
      @search_tree.build_tree(array)
    end

    def dfs_rec(value, node=@search_tree.root)
      current = node
      if current.nil? || current.value.include?(value)
        return nil if current.nil?
        current.value
      else dfs_rec(value, current.children)
      end
    end

  
      
    
  end
