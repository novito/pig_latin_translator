require "pig_latin_translator/version"

module PigLatinTranslator
  def self.translate(original)
    original.split.map.each { |word| translate_word(word) }.join(' ')
  end

  private

  def self.translate_word(original)
    return original if original.empty?

    is_first_letter_capital = original[0] == original[0].upcase
    first_vowel_index = original.index(/[aeiou]/i)

    if first_vowel_index == 0 
      translated = original[1..-1] + original[0].downcase + 'way'
    elsif first_vowel_index.nil?
      translated = original[1..-1] + original[0].downcase + 'ay'
    else
      translated = original[first_vowel_index..-1] + original[0...first_vowel_index].downcase + 'ay'
    end

    is_first_letter_capital ? translated.capitalize : translated
  end
end
