require 'pry'

class String

  def sentence?
    #binding.pry
    if self.match(/.*[.]\z/)
      true
    else
      false
    end
  end

  def question?
    if self.match(/.*[?]\z/)
      true
    else
      false
    end
  end

  def exclamation?
    self.match(/.*[!]\z/) ? true : false
  end

  def count_sentences
    array = self.scan(/\w+[.?!]/)
    if array.length == 0
      return 0
    else
      return array.length
    end
  end
end
