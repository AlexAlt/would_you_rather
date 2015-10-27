FactoryGirl.define do
  factory(:question) do
    option_one('Test Option One')
    option_two('Test Option Two')
    points_two(1)
  end
end
