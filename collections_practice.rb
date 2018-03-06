# your code goes here
require 'pry'
def begins_with_r(arr)
  arr.each do |tool|
    if !(tool[0] == "r")
      return false
    end
  end
  return true
end

def contain_a(arr)
  ans = []
  arr.each do |tool|
    if tool.include?("a")
      ans << tool
    end
  end
  return ans
end

def first_wa(arr)
  arr.each do |word|
    if word[0..1] == "wa"
      return word
    end
  end
end

def remove_non_strings(arr)
  ans = []
  arr.each do |item|
    if item.is_a?(String)
      ans << item
    end
  end
  return ans
end

def count_elements(arr)
  ans = Hash.new(0)
  arr.each do |word|
    ans[word] += 1
  end
  ans.each do |item, count|
    item[:count] = count
  end
  return ans.keys
end

def merge_data(item1, item2)
  i = 0
  arr = []
  while i < item1.length
    arr << item1[i].merge(item2[0].values[i])
    i += 1
  end
  return arr
end

def find_cool(arr)
  arr.each do |hash|
    hash.values.each do |temperature|
      if temperature == "cool"
        return [hash]
      end
    end
  end
end

def organize_schools(schoolHash)
  nyc = []
  sf = []
  chicago = []
  hash = {}
  schoolHash.each do |school, location|
    location.each do |loc, city|
      if city == "NYC"
        nyc << school
      elsif city == "SF"
        sf << school
      else
        chicago << school
      end
    end
  end
  hash["NYC"] = nyc
  hash["SF"] = sf
  hash["Chicago"] = chicago
  return hash
end
