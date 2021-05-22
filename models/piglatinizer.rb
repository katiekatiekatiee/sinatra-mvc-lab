class PigLatinizer
    VOWELS = ['a','e','i','o','u']
    @@all = []

    def piglatinize(input)

        

        input = input.split(" ")
        i = input.map do | w |
            if w.start_with?(/[aeiouAEIOU]/)
                w << "way"
            else 
                cons = []
                w = w.split('')
                w.each do |letter|
                    VOWELS.include?(letter) ? break : cons << letter    
                end
                cons = cons.join('')
                w = w.join("").sub(cons, "")
                w << cons
                w << "ay"
                w
            end

        end.join(" ")
        @@all << i
        i
    end
end