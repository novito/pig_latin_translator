require 'spec_helper'

describe PigLatinTranslator do
  describe '.translate' do
    context 'when passed an empty string' do
      it 'returns an empty string' do
        expect(PigLatinTranslator.translate('')).to eq('')
      end
    end

    context 'when called without an argument' do
      it 'raises an error' do
        expect { PigLatinTranslator.translate }.to raise_error(ArgumentError)
      end
    end

    context 'when called with a word that starts with a consonant and vowel' do
      it 'returns appyhay when given happy' do
        expect(PigLatinTranslator.translate('happy')).to eq('appyhay')
      end
    end

    context 'when called with a word that starts with a group of consonants' do
      it 'returns oeshay when given shoes ' do
        expect(PigLatinTranslator.translate('school')).to eq('oolschay')
      end
    end

    context 'when called with a word that starts with a vowel' do
      it 'returns ggeway when given egg' do
        expect(PigLatinTranslator.translate('egg')).to eq('ggeway')
      end

      it 'returns iway when given i' do
        expect(PigLatinTranslator.translate('i')).to eq('iway')
      end
    end

    context 'when called with a word that starts with a capital letter' do
      it 'returns Ggeway when given Egg' do
        expect(PigLatinTranslator.translate('Egg')).to eq('Ggeway')
      end
    end

    context 'when given a sentence with several words' do
      samples = {'Hello my name is Joan' => 'Ellohay ymay amenay siway Oanjay'}
      samples.each do |original, expected|
        it 'returns the proper translation for the sentence' do
          expect(PigLatinTranslator.translate(original)).to eq(expected)
        end
      end
    end
  end
end
