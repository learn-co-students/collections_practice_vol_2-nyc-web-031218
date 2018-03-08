# your code goes here
require ('pry')
def begins_with_r(array)
# binding.pry
  array.all? {|tool|
      tool.start_with?('r')


  }

end

def contain_a(array)

# contains_a = []
  array.select {|element|
       element.include?('a')


  }

end

def first_wa(array)

array.find {|word|
  if word.is_a? String
  word.start_with?("wa")
end
}

end


def remove_non_strings(array)
  array.delete_if {|type|
      !type.is_a? String
  }
end


def count_elements(array)
#Iterate over the array
#take original hash set count to 0
# take the original hash name set it as new name
      # new_name = og[:name]
  #iterate over the array again
  #if the current hash has the same name as new name then we increment the count on the og hash

array.each do |orig_hash|
orig_hash[:count] = 0
new_name = orig_hash[:name]

  array.each do |current|
  if  current[:name] == new_name
    orig_hash[:count] += 1
    end
  end
end.uniq



# counted = Hash.new(0)
# array.each { |h| counted[h[:name]] += 1 }
# counted = Hash[counted.map {|k,v| [k,v] }]
# the_count = {}
# count_array = []
# counted.each {|k,v|
#
#       the_count[:name] = k
#       the_count[:count] = v
#    count_array << the_count
#
# }
# count_array
# binding.pry

end


def find_cool(array)
cool_temp = []
  array.select {|item|
    if item[:temperature] == "cool"
        item
    end
  }

end


def merge_data(keys, data)

merge_data = []
#take each hash value of the keys array and set it to the first element of the data array
keys.each {|key|
   merged_data << data.unshift(key)
}
merged_data
end

def organize_schools(hash)
  organized_schools = {}
  nyc_schools = []
  sf_schools = []
  chi_schools = []
  hash.each {|school, city|
    # binding.pry
    if city[:location] == "NYC"
        nyc_schools << school
      organized_schools[city[:location]] = nyc_schools
  end
  if city[:location] == "SF"
      sf_schools << school
    organized_schools[city[:location]] = sf_schools
end
if city[:location] == "Chicago"
    chi_schools << school
  organized_schools[city[:location]] = chi_schools
end
  }
  organized_schools

end
