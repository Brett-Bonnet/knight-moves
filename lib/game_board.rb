class GameBoard
  attr_reader :board

    def initialize
      populate_board
    end
  
    def populate_board
      @board = []
      @width = []
      @height = []
      x = 0
      y = 0
      8.times do
        @height.push(x)
        x += 1
      end
      @width = @height
      @height.each do |x_num|
        @width.each do |y_num|
          @board << [x_num, y_num]
        end
      end
  
      
    end

    def display_board
      puts "#{@board[7]} | #{@board[15]} | #{@board[23]} | #{@board[31]} | #{@board[39]} | #{@board[47]} | #{@board[55]} | #{@board[63]}"
      puts "#{@board[6]} | #{@board[14]} | #{@board[22]} | #{@board[30]} | #{@board[38]} | #{@board[46]} | #{@board[54]} | #{@board[62]}"
      puts "#{@board[5]} | #{@board[13]} | #{@board[21]} | #{@board[29]} | #{@board[37]} | #{@board[45]} | #{@board[53]} | #{@board[61]}"
      puts "#{@board[4]} | #{@board[12]} | #{@board[20]} | #{@board[28]} | #{@board[36]} | #{@board[44]} | #{@board[52]} | #{@board[60]}"
      puts "#{@board[3]} | #{@board[11]} | #{@board[19]} | #{@board[27]} | #{@board[35]} | #{@board[43]} | #{@board[51]} | #{@board[59]}"
      puts "#{@board[2]} | #{@board[10]} | #{@board[18]} | #{@board[26]} | #{@board[34]} | #{@board[42]} | #{@board[50]} | #{@board[58]}"
      puts "#{@board[1]} | #{@board[9]} | #{@board[17]} | #{@board[25]} | #{@board[33]} | #{@board[41]} | #{@board[49]} | #{@board[57]}"
      puts "#{@board[0]} | #{@board[8]} | #{@board[16]} | #{@board[24]} | #{@board[32]} | #{@board[40]} | #{@board[48]} | #{@board[56]}"
    end
  
  
    
  end