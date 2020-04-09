require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do

    question = Question.create email: "author@gmail.com", body: "a test question"

    answer = Answer.create email: "example@gmail.com", body: "a test answer"

    question.answers << answer
    # question.save

    mail = MainMailer.notify_question_author(answer)
    assert_equal mail.subject, "New answer to your question"
    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    assert_match answer.body, mail.body.encoded
  end

end
