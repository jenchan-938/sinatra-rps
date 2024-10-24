require "sinatra"
require "sinatra/reloader"



get("/") do
  
 


  erb(:homepage)

end



get ("/rock") do
@options = ["rock", "paper", "scissors"]
@robot = @options.sample
@robot_play = "They played #{@robot}"
  
@user_play = "We played rock"

if @robot == "rock"
  @result = "We tied!"
elsif @robot =="paper"
  @result = "We lost!"
elsif @robot =="scissors"
    @result = "We won!"
end
erb(:rock)

end


get ("/scissors") do
  @options = ["rock", "paper", "scissors"]
  @robot = @options.sample
  @robot_play = "They played #{@robot}"
  @user_play = "We played scissors"

  if @robot == "scissors"
    @result = "We tied!"
  elsif @robot =="paper"
    @result = "We won!"
  elsif @robot =="rock"
      @result = "We lost!"
  end
  
  erb(:scissors)
  end

  get ("/paper") do
    @options = ["rock", "paper", "scissors"]
    @robot = @options.sample
    @robot_play = "They played #{@robot}"

    @user_play = "We played paper"
    if @robot == "paper"
      @result = "We tied!"
    elsif @robot =="rock"
      @result = "We won!"
    elsif @robot =="scissors"
        @result = "We lost!"
    end
    
    erb(:paper)
    end
