
class Player
  attr_accessor :name,:lives
  def initialize(name)
    @name = name
    @lives =3
  end
end
class Game
  attr_accessor :player1, :player2, :current_user, :current_question, :current_answer
  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @current_user = player1
    @current_question = current_question
    @current_answer = current_answer

  end

  def game_player

    loop do
      puts "------ NEW TURN ------"
    rand_game
    response

      if @player1.lives == 0
        puts "#{@player2.name} wins with a score #{player2.lives}/3"
        break
        end
      if @player2.lives == 0
        puts "#{player1.name} wins with a score #{player1.lives}/3"
        break
        end
    end
  end

  def rand_game
    a = rand(20) + 1
    b = rand(20) + 1
    @current_question = [ a , b ]
    puts "what does #{@current_question[0]} and #{@current_question[1]} equal?"
  end

  def response
      @current_answer = gets.chomp.to_i

    if @current_answer == @current_question[0] + @current_question[1]
      puts "Current user lives #{@current_user.lives } and player1 lives #{@player2.lives}"
      puts "Yes your correct!"
    else
      @current_user.lives -= 1
      puts "Seriously? No"
    end

    if(@current_user == @player1)
      @current_user = @player2
      else
      @current_user = @player1
    end
    puts "P2 lives #{@player1.lives }/3 and player2 lives #{player2.lives}/3"
  end
end






