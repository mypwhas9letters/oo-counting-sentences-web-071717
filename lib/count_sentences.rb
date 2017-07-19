require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
  ends = ['.','?','!']
    self.split(" ").count do |x|
    ends.any? do |y|
      x.end_with?(y)
      end
    end
  end


end
