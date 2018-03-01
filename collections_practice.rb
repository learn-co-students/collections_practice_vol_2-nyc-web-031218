require 'pry'

def begins_with_r(array)
  array.each do |stuff|
    if stuff[0] != "r"
      return false 
    end
  end
  return true 
end


def contain_a(array)
  ans = []
  array.each do |stuff|
    if stuff.include?('a') == true
      ans << stuff
    end
  end
  return ans
end


def first_wa(array)
  array.each do |stuff|
    if stuff[0] == 'w' && stuff[1] == 'a'
      return stuff
    end
  end  
end  


def remove_non_strings(array)
  ans = []
  array.select do |element|
    if element.is_a?(String)
      ans << element
    end
  end  
end

def count_elements(array)
  array.each do |elements| 
    elements[:count] = 0 
  array.each do |ele|
    if elements[:name] == ele[:name]
      elements[:count] += 1
    end 
  end
  end.uniq
end  

def merge_data(one, two)
  ans = []
  one.each do |names|
    name = names[:first_name]
      two.each do |info|
        merge = info[name]
        merge[:first_name] = name
      ans << merge
      end
    end
  return ans
end

def find_cool(data)
  data.select do |hash|
    hash[:temperature] == "cool"
  end
end


def organize_schools(data)
  ans = {}
  data.each do |school, location_hash|
    location_hash.each do |key, city|
      if ans[city].nil?
        ans[city] = [school]
      else ans[city] << school
    end
  end
end
 ans
end