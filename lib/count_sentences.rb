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
  remove_extra = String.new
#   self_array.each_with_index do |word, index|
#   if word == remove_extra
#     self_array[index].pop
#   end 
#   index += 1
#   remove_extra = word
# end
   self_array.each do |word|
   if word != "." || word != "!" || word != "?"
     self_array.delete(word)
   end
 end
   self_array.count
   binding.pry
end

end