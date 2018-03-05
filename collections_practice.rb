require 'pry'

def begins_with_r (tools)
  if tools.any? { |tool| tool[0].downcase != "r"  }
    false
  else true
  end
end

def contain_a (words)
  result = []
  words.each do |word|
    if word.downcase.include?("a")
      result << word
    end
  end
  result
end

def first_wa (words)
  words.each do |word|
    if word.downcase[0..1] == "wa"
      return word
    end
  end
end

def remove_non_strings (array)
  results = []
  array.each do |e|
    if e.class == String
      results << e
    end
  end
  results
end

def count_elements (array)
  results = array.uniq
  results.each do |element|
    element[:count] = array.count(element)
  end
  results
end


def merge_data (data1, data2)
  result = []
  index = 0
  data2.each do |hashes|
    hashes.each do |string, inner_hash|
      inner_hash.each do |key, value|
        data1[index][key] = value
      end
      index+= 1
    end
  end
  data1
end

def find_cool (hashes)
  result = []
  hashes.each do |hash|
    if hash[:temperature] == "cool"
      result << hash
    end
  end
  result
end

def organize_schools (schools_hash)
  organized_hash = {}
  schools_hash.each do |school, loc_hash|
    location = loc_hash[:location]
    if organized_hash.include?(location)
      organized_hash[location] << school
    else
      organized_hash[location] = [school]
    end
  end
  organized_hash
end
