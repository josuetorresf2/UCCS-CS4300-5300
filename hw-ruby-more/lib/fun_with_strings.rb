module FunWithStrings
  def palindrome?
    # your code here
    #self.gsub(/\W+/, '').downcase == self.gsub(/\W+/, '').reverse.downcase

    #self.downcase!
    #self.gsub!(/[^a-zA-Z]/, "")
    #self == self.reverse

    s = self.gsub(/[^[:alnum:]]+/, '')
    s.downcase == s.downcase.reverse
  end
  def count_words
    # your code here
    #hash = Hash.new(0) # new has 
    #self.downcase.scan(/\w+/) {|m| hash[m] += 1 }
    #return hash
  end
  def anagram_groups
    # your code here
    #self.downcase.split.group_by { |x| x.chars.sort }.values
  end

end

# make all the above functions available as instance methods on Strings:
class String
  include FunWithStrings
end