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


def merge_data(keys, data)
  data[0].map do |name, stats_hash|
    merged_hash = {}
    keys.each do |attr_hash|
      if attr_hash[:first_name] == name
        merged_hash = stats_hash.merge(attr_hash)
      end
    end
    merged_hash
  end
end
  
def find_cool(cool_hash)
  new_array = []
  cool_hash.each do |attr_hash|
    attr_hash.each do |item, description|
      if description == "cool"
        new_array.push(attr_hash)
      end
    end
  end
  new_array
end


def organize_schools(schools)
  binding.pry
end




