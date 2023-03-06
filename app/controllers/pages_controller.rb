class PagesController < ApplicationController
  def ask
    @possible_questions = ["Can I go gym?", "Can I eat meat?", "Can I chill out?"]

  end

  def answer
    @question = params["user-question"]

    @answer = ''
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
