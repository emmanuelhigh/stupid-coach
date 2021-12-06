class PagesController < ApplicationController

  def ask
  end

  def answer
    response_1 = 'Great!'
    response_2 = 'Silly question, get dressed and go to work!'
    response_3 = "I don't care, get dressed and go to work!"

    @answer =
    if params[:answer] == 'I am going to work'
      response_1
    elsif params[:answer].include?('?')
      response_2
    else
      response_3
    end
  end
end
