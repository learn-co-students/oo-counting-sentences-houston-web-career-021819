require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
      #use regular expression, | is either or
      #\. =. \? =? \! =!
      #+ :  One or more times, if the sentence contains 1 or more punctuation marks
      self.split(/\.+|\?+|\!+/).length

      #edge case: if the sentence only has a word, a word shorter than 2 letters cannnot be a sentence
      # return newarray.delete_if?{|word| word.length<2}

  end
end
