class PigLatinizer
  attr_accessor :phrase

  def piglatinize(phrase)

    phrase.split.map do |word|
      first_character = word.chars.first
      
      while word.chars.first.match(/[^aeiouAEIOU]/)
        pig = word.chars.push(word.chars.first)
        pig.shift
        word = pig
      end
      
      first_character.match(/[^aeiouAEIOU]/) ? word.insert(-1, 'ay') : word.insert(-1, 'way')

      word.downcase == word ? word : word.capitalize
    end.join(' ')


    #
    #
    #   word.chars.first.match(/[^aeiouAEIOU]/) ? pig.insert(-1, 'ay') : pig.insert(-1, 'way')
    #
    #   word.downcase == word ? pig : pig.capitalize
    # end.join(' ')
  end

end
