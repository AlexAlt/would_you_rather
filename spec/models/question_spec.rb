require 'rails_helper'

describe Question do
  it { should validate_presence_of :option_one}
  it { should validate_presence_of :option_two}
  it { should have_and_belong_to_many :users }
  
end
