class Api::GamesController < ApplicationController
  def all_caps_action
    @name = params[:name].upcase
    render 'all_caps.json.jbuilder'
    puts "=" * 50
    puts @name
    puts "=" * 50
  end

  def a_name_action
    @name = params[:name]
    if @name[0].downcase == 'a'
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'a_name.json.jbuilder'
  end

  def string_guess_action
    @guess = params[:guess].to_f
    target_number = 42

    if target_number > @guess
      @message = "Too low! Try a higher number."
    elsif target_number < @guess
      @message = "Too high! Guess a lower number"
    else
      @message = "You got it, it's just right...Like Goldielocks."
    end
    render 'string_guess.json.jbuilder'
  end

  def url_guess_action
    @guess = params[:guess].to_i
    target_number = 42

    if target_number > @guess
      @message = "Too low! Try a higher number."
    elsif target_number < @guess
      @message = "Too high! Guess a lower number"
    else
      @message = "You got it, it's just right...Like Goldielocks."
    end
    render 'url_guess.json.jbuilder'
  end

  def form_guess_action
    @guess = params[:guess].to_i
    target_number = 42

    if target_number > @guess
      @message = "Too low! Try a higher number."
    elsif target_number < @guess
      @message = "Too high! Guess a lower number"
    else
      @message = "You got it, it's just right...Like Goldielocks."
    end
    render 'form_guess.json.jbuilder'
  end
end
