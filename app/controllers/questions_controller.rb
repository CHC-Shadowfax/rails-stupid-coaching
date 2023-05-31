class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.downcase == "I am going to work right now!".downcase
      return "Great!"
    elsif your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
