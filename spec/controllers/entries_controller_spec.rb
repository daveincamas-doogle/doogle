require 'spec_helper'

describe EntriesController do
  describe 'GET show' do
    let!(:entry1) { create(:entry, word: "the_word") }
    let!(:def1) { create(:definition, entry: entry1, text: "Definition 1")}
    let!(:def2) { create(:definition, entry: entry1, text: "Definition 2")}
    let!(:params) { entry1 }

    def make_request#(params = {})
      get :show, {entry: {word: "the_word"}}
    end

    it "renders a list of definitions" do
      puts "Definitions: #{Definition.all}"
      make_request
      response.should be_success
      response.should render_template(:show)
      #assigns(Definition.all).should eq([def1, def2])
    end
  end
end