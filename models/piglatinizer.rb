class PigLatinizer
  attr_accessor :phrase

  def piglatinize(phrase)
    pig = ''
    phrase.split.map do |word|
      while word.chars.first.match(/[^aeiouAEIOU]/)
        pig = word.chars.push(word.chars.first)
        pig.shift
      end

      word.chars.first.match(/[^aeiouAEIOU]/) ? pig.insert(-1, 'ay') : pig.insert(-1, 'way')

      word.downcase == word ? pig : pig.capitalize
    end.join(' ')

    binding.pry
  end

end
