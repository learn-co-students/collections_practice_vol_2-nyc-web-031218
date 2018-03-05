# your code goes here
require 'pry'
# your code goes here
def find_cool(cool)
  array=[]
  cool.each do |data|
    so_cool=data[:temperature]
    data.each do |key,value|
      if so_cool == "cool"
        array<< data
        # binding.pry
      end
    end
  end
  array.uniq
end

def count_elements(array)
  new_hash={}
  array.each do |data|
    data[:count]=0
    array.each do |element|
      # binding.pry
      if data[:name]==element[:name]
        data[:count]+=1
      # binding.pry
    end
    end

  end
  array.uniq
end

def merge_data(one,two)
  # binding.pry
  array=[]
  one.each do |names|
    name=names[:first_name]
    # binding.pry
    two.each do |info|
      merge = info[name]
      merge[:first_name]= name
      # binding.pry
      array << merge
    end
  end
  array
end

def organize_schools(schools)
  # binding.pry
  sorted_locations={}
  schools.collect do |school,location|
    # binding.pry
    location.sort_by do |key, v|
      # binding.pry
      if sorted_locations[v].nil?
        sorted_locations[v]=[school]
      else
        sorted_locations[v] << school
        # binding.pry
      end
    end
  end
  sorted_locations
  # binding.pry
end

def begins_with_r(tools)
  tools.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  contains_a=[]
  array.collect do |words|
    if words.include?("a")
      contains_a << words
    end
  end
  contains_a
end

def first_wa(array)
  has_wa=[]
  array.each do |word|
    if word.to_s.start_with?("wa")
      has_wa << word
    end
  end
  has_wa=has_wa[0]
end

def remove_non_strings(array)
  only_str=[]
  array.collect do |string|
    if string == string.to_s
      only_str << string
    end
  end
  only_str
end
