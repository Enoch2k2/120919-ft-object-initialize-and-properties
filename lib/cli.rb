class Cli
  def run
    puts "Welcome to the game creation screen"
    menu
  end
  
  def menu
    puts "Here is a list of options"
    puts "Type 1 to create a character"
    puts "Type 2 to list your characters"
    puts "Type exit to exit program"
    menu_input
  end

  def menu_input
    user_input = gets.strip
    if user_input == "exit"
      goodbye
    elsif user_input == "1"
      create_character
      menu
    elsif user_input == "2"
      list_characters
      menu
    else
      incorrect_input
      menu
    end
  end


  def goodbye
    puts "Terminating Program, see you again!"
    exit
  end

  def incorrect_input
    puts "Did you mean to type that? I don't understand, try again!"
  end

  def create_character
    puts "Ready to create a character? Wonderful, let's get started!"
    print "Let's start with your character's name: "

    name = gets.strip

    print "\n What is your characters level: "
    
    level = gets.strip
    
    print "\n What is your characters klass: "
    klass = gets.strip
    print "\n What is your characters score: "
    score = gets.strip
    print "\n What is your characters strength: "
    strength = gets.strip
    print "\n What is your characters lives: "
    lives = gets.strip
    print "\n What is your characters speed: "
    speed = gets.strip
    print "\n What is your characters health: "
    health = gets.strip


    attributes = {
      name: name,
      level: level,
      klass: klass,
      score: score,
      strength: strength,
      lives: lives,
      speed: speed,
      health: health
    }
  
    new_character = Character.new(attributes)

    new_character.say_description
  end

  def list_characters
    puts "Here's a list of all the characters you've created! And if you didn't create them, make sure to run anti-virus scans often or ask your other half."
  end
end