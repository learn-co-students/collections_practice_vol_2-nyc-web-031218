# require 'pry'
#begins_with_r Return true if every element of the tools array starts with an
#"r" and false otherwise.

#begins_with_r should return false if there's an
#element that does not begin with r

def begins_with_r(tools_array)
  tools_array.each do |tool|
    if tool[0] != "r"
      return false
    end
  end
  return true
end

#contain_a return all elements that contain the letter 'a'

def contain_a(array)
  array.select do |item|
    item.include?('a')
  end
end

#first_wa Return the first element that begins with the letters 'wa'

def first_wa(array)
  array.find do |item|
    item[0] == 'w' && item[1] == 'a'
  end
end

#remove_non_strings remove anything that's not a string from an array

def remove_non_strings(array)
  array.reject do |item|
    !item.instance_of? String
  end
end

#count_elements count how many times something appears in an array

def count_elements(array)
  array.each do |initial_hash|
    initial_hash[:count] = 0
    array.each do |hash_with_count|
      if hash_with_count[:name] == initial_hash[:name]
        initial_hash[:count] += 1
      end
    end
  end.uniq
end

#merge_data combines two nested data structures into one

def merge_data(struct_a, struct_b)
  unified_struct = []
  struct_a.each do |individual_name|
    name = individual_name[:first_name]
    struct_b.each do |individual_hash|
      merged_individual = individual_hash[name]
      merged_individual[:first_name] = name
      unified_struct << merged_individual
    end
  end
  return unified_struct
end

#find_cool find all cool hashes

def find_cool(data)
  data.select do |individual_hash|
    individual_hash[:temperature] == "cool"
  end
end


#organize_schools organizes the schools by location

def organize_schools(schools)
  schools_in_order = {}
  schools.each do |school, location_hash|
    location_hash.each do |key, location|
      if schools_in_order[location].nil?
        schools_in_order[location] = [school]
      else
        schools_in_order[location] << school
      end
    end
  end
  schools_in_order
end
