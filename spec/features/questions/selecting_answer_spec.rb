require 'rails_helper'

describe "Choosing option" do
  it 'will choose option one', js: true do
    question = FactoryGirl.create(:question)
    visit root_path
    find_link('Test Option One').trigger('click')
    expect(page).to have_content(1)
  end
  it 'will choose option two', js: true do
    question = FactoryGirl.create(:question)
    visit root_path
    find_link('Test Option Two').trigger('click')
    expect(page).to have_content(2)
  end
end
