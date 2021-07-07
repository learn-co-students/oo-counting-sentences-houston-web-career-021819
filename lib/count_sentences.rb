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
    counter = 0
    broken_down = self.split(" ")
    broken_down.each do |sentence_check|
      if sentence_check.sentence? || sentence_check.question? || sentence_check.exclamation?
        counter += 1
      end
    end
    return counter
  end
end
