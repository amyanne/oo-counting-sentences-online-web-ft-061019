require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else 
    false 
  end 
    end

  def question?
if self.end_with?("?")
      true 
    else 
    false 
  end
end
  def exclamation?
    if self.end_with?("!")
      true 
    else 
    false 
  end
end
  def count_sentences
  self_array = self.split(" ")
  count_array = []
   self_array.each do |word|
   if word.question? || word.sentence? || word.exclamation?
     count_array << word
   end
 end
   count_array.count
end
end