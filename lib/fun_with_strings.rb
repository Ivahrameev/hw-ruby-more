module FunWithStrings
  def palindrome?
    # your code here
    #self == self.reverse
    word = self.downcase.scan(/\w/) #\w is a regex for any num/char, so things like question marks wont be included
    word == word.reverse
  end
  def count_words
    # your code here
    count = Hash.new
    self.downcase.gsub(/[^\w\s+:punct:]/,'').split.each do |word|
    # I have no idea why this doesn't ignore punctuation...
    # when I use this regex on rubalar, it selects all the puctionation
    # inside the test string "A man, a plan, a canal -- Panama!"
    # which should then be removed and replaced with nothing. This clearly
    # does not happen
        if count[word] != nil
            count[word] += 1
        else
            count[word] = 1
        end
    end
    count
    #counter = Hash.new(0)
    #words = self.downcase.scan(/\w+/)
    #words.each { |word| counter[word] += 1 }
    #counter
  end
  def anagram_groups
    # your code here
    words = self.split
    results = Array.new
    words.each_with_index do |word, index| 
        unless results.any? { |arr| arr.include?(word) }
            temp_array = Array.new
            temp_array.push(word)
            words[index+1..-1].each do |word2|
                if word.is_anagram(word2)
                    temp_array.push(word2)
                end
            end
            results.push(temp_array)
        end
    end
    results
end
def is_anagram(word)
    self.downcase.chars.sort.join == word.downcase.chars.sort.join
end
 end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
