require 'rails_helper'

describe 'adding question' do
  it 'will nav to page, add question, expect to see the question' do
    visit new_question_path
    fill_in('question_option_one', with: 'Test One')
    fill_in('question_option_two', with: 'Test Two')
    click_on 'Questsch it!'
    expect(page).to have_content('Test One')
  end

  it 'will fuck up a question' do
    visit new_question_path
    click_on 'Questsch it!'
    expect(page).to have_content('What are you doing')
  end
end
