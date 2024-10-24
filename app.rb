require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors</h1>
  <p>Define some routes in app.rb</p>
  "
end


@options = ["Rock", "Paper", "Scissors"]
@robot = @options.sample
@robot_play = "They played #{@robot}"

get ("/playrock") do

@user_play = "We played rock"
if @robot == "Rock"
  @result = "We tied"
elsif @robot =="Paper"
  @result = "We lost!"
elsif @robot =="Scissors"
    @result = "We won!"
end

end

get ("/playscissors") do

  @user_play = "We played scissors"

  if @robot == "Scissors"
    @result = "We tied"
  elsif @robot =="Paper"
    @result = "We won!"
  elsif @robot =="Rock"
      @result = "We lost!"
  end
  
  end

  get ("/playpaper") do

    @user_play = "We played paper"
    if @robot == "Paper"
      @result = "We tied"
    elsif @robot =="Rock"
      @result = "We won!"
    elsif @robot =="Scissors"
        @result = "We lost!"
    end
    
    end
