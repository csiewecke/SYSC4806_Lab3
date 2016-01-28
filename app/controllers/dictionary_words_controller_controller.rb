require "#{Rails.root}/app/models/web_spellchecker.rb"
require "json"

class DictionaryWordsControllerController < ApplicationController

  def spellcheck
    @term = params[:term]
    spellchecker = WebSpellchecker.new
    known = spellchecker.known(@term).any?
    returnHash = {
      :term => @term,
      :known => known,
      :suggestions => spellchecker.correct(@term)}
    
    render json: returnHash
    
  end
end
