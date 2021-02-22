class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @your_message = params['query']
    if @your_message.downcase == 'i am going to work!'
      @answer = 'Great!'
    elsif @your_message.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
