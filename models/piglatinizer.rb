class PigLatinizer
    attr_accessor :string

    def initialize(string = nil)
        @string = string
    end

    def piglatinize(string = @string)
        words = string.split(' ').map do |word|    
            first_vowel_idx = word.index(/[aeiouAEIOU]/)
            if first_vowel_idx > 0
                word = word[first_vowel_idx..-1] + word[0..first_vowel_idx - 1] + 'ay'
            else
                word = word + 'way'
            end 
        end
        words.join(' ')
        
    end
    
end

#word starts with consonant cluster? move to end add ay
#word starts with consonant move to end add ay
#vowel? 

#