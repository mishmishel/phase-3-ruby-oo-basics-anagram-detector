# Your code goes here!
class Anagram
    attr_reader :word
  
    def initialize(word) # The initialize method takes a word as an argument and stores it in the instance variable @word.
      @word = word.downcase
    end
  
    def match(words)
      words.select { |w| anagram?(w.downcase) }
    end #The match method takes an array of words and returns an array of words from the input array that are anagrams 
    # of the initialized word. If no matches are found, it will return an empty array.

    #The match method uses the anagram? method to check if each word in the input array is an anagram of the 
    #initialized word. If a match is found, that word is included in the output array.

    #The match method uses the select method to iterate through the input array and select only the 
    #words that are anagrams of the initialized word.
  
    private
    #The anagram? private method compares two words to check if they are anagrams. It uses the chars method to convert 
    # the words into arrays of characters and then compares the sorted arrays. If they match, the words are anagrams.
    def anagram?(other_word)
      return false if word == other_word
      word.chars.sort == other_word.chars.sort
    end
  end

  
