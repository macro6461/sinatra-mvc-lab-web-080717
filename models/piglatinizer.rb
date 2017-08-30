require 'pry'
class PigLatinizer

  # attr_accessor :pig_word

  def piglatinize(str)

    vowels = %w(a e i o u A E I O U)
    final_word = ""

    letters = str.split('')
    i = 0
    if vowels.include?(letters[i]) && letters.length == 1
      ## 'I'
      final_word = letters.join("") + 'way'
    elsif vowels.include?(letters[i])
      # 'enumeration'
      final_word = letters.join("") + 'way'
    else
      until vowels.include?(letters[i]) do
        i += 1
      end
      if vowels.include?(letters[i])
        final_word = letters[i..-1].join("") + letters[0..i-1].join("") + 'ay'
      end
    final_word
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
