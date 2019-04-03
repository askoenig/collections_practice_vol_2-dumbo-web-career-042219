require 'pry'


def begins_with_r(tools_array)
  tools_array.all? {|tool| tool.to_s.start_with?("r")}
end
  

def contain_a(array)
  array.select {|word| word.to_s.include?("a")}
end
  
  
def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end
  
  
def remove_non_strings(array)
end
  
  
  