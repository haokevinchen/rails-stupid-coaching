# test/system/questions_test.rb
require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
    take_screenshot
  end

  # test 'visiting the index' do
  #   visit questions_url
  #   assert_selector 'h1', text: 'Questions'
  #   take_screenshot
  # end
end
