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
  self_array = self.split("")
  count_array = []
  repeat_check = String.new
   self_array.each do |word|
   if word == repeat_check
     self_array.pop
   if word.question? || word.sentence? || word.exclamation?
     count_array << word
   end
 end
   count_array.count
end
end