class PigLatinizer

    def piglatinize(input_str)
        input_str.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end

    private

    def vowel?(char)
        char.match(/[aeiou]/i)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aeiou]/i)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end
end