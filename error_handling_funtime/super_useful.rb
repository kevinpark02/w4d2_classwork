# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError => err
    p err
    return nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  # begin
  #   if maybe_fruit == "coffee"
  #     puts "Thanks I love coffee, but try again"


  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise ArgumentError
  else
    raise StandardError 
  end 
    rescue ArgumentError => err
      puts "I love coffee, so try again"
      feed_me_a_fruit     
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
end  

class DescriptiveError < StandardError; end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime

    if @yrs_known < 5
      raise DescriptiveError
    end

    if @name.length < 1 || @fav_pastime.length < 1
      raise DescriptiveError
    end

  rescue DescriptiveError => err
    puts "This is not a true friendship"

  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


