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
  array.keep_if { |obj| obj.is_a? String}
end
  
  
def count_elements(array)
  new_array = []
  counts = Hash.new 0
  array.each do |objects|
    objects.each do |key, value|
      counts[value] += 1
    end
  end
  counts.each do |name, count|
    new_array << {name: name, count: count}
  end
  new_array
end

  
  
  