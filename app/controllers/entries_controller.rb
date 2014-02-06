class EntriesController < ApplicationController
  def show
    puts "params: #{params}"
    entry_param = params[:entry]
    puts "entry_param: #{entry_param}"
    @word = entry_param[:word]
    puts "word: #{@word}"
    #entry = Entry.last
    entry = Entry.find_by_word(@word)
    puts "entry: #{entry.inspect}"
    if entry == nil
      # TODO - Get definitions from dictionary.com
      @definitions = nil
    else
      @definitions = Definition.find_all_by_entry_id(entry)
      #@definitions = Definition.last
    end
    puts "show definitions: #{@definitions.inspect}"
    @definitions
  end
end
