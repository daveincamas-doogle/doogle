require 'spec_helper'

describe "look up a word" do
  before do
    visit root_path
  end

  it "says 'Doogle' at the top" do
    page.should have_content("Doogle")
  end

  it "has an input form" do
    page.should have_selector("form")#, action: "/entries")
  end

  context "when the word is in our local database" do
    let(:word) { create(:entry, word: "dog") }

    it "displays a list of definitions" do
      enter_word word

    end
  end

  context "when the word is not in our local database but is in dictionary.com" do

  end

  context "when the word is not in dictionary.com" do

  end

  def enter_word(word)
    fill_in 'entry_word', with: word
  end

end
