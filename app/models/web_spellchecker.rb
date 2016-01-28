class WebSpellchecker < Spellchecker

  def initialize()

  end

  #return subset of the input words that are known by this dictionary
  def known(words)
    DictionaryWord.where(word: words).map{|x| x[:word]}
  end

end
