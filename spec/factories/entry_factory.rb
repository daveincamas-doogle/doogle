FactoryGirl.define do
  factory :entry do
    word  "default_word"

    #factory :entry_with_definition do
    #  after(:create) do |entry|
    #    create(:definition, entry: entry)
    #  end
    #end
  end
end