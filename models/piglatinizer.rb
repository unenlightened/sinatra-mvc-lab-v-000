class Piglatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def piggy
    @phrase.split.each do |word|
      i = 0
      while word[i] != (/[aeiou]/)
        word[]

        word.insert(-1, 'way')


      word.downcase == word ? word : word.capitalize
    end.join(' ')
  end

end
