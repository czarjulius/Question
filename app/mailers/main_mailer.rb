class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_question_author.subject
  #
  def notify_question_author(answer)
    @greeting = "Hi"
    @answer = answer

    mail to: answer.question.email, from: answer.email
    # mail subject:  "New answer to your question"subject: default_i18n_subject
  end
end
