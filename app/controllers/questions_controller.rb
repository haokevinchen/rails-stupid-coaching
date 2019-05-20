class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:user_question].downcase.capitalize
    @answer = get_response(@question)
  end

  def get_response(question)
    if question == 'I am going to work'
      'Great!'
    elsif question.strip[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
