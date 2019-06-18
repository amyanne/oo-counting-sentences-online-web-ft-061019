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
   self_array.each_with_index do |word, index|
   if word == repeat_check
     self_array.pop(index)
   end 
   repeat_check = word 
   index += 1 
   if word.question? || word.sentence? || word.exclamation?
     count_array << word
   end
 end
   count_array.count
end
end