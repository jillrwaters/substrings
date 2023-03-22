# implement a method #substrings that takes a hash as the first argument and then an array of valid substrings as the second argument. it should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.


def substrings (string, dictionary)

  dictionary.reduce(Hash.new(0)) do |hash, word|
      hash[word] += 1 if string.include?(word)
      hash 
  end

end


dictionary = %w(below down go going horn how howdy it i low own part partner sit)

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)