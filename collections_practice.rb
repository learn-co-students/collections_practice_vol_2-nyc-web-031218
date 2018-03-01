require 'pry'
# your code goes here
def begins_with_r(tools)
  !tools.any? { |t| t[0].upcase != 'r'.upcase }
end

def contain_a(elements)
  elements.select { |e| e.upcase.include? "a".upcase }
end

def first_wa(elements)
  elements.find { |e| e[0...2].upcase == 'wa'.upcase }
end

def remove_non_strings(array)
  array.delete_if { |e| !e.is_a? String }
end

def count_elements(array)
  array.each do |e|
    e[:count] = 0
    array.each do |ele|
      if ele[:name] == e[:name]
        e[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  result = []
  temp = {}
  data[0].each do |person|
    temp[:first_name] = person[0]
    person[1].each do |x,y|
      temp[x] = y
    end
    result << temp
    temp = {}
  end
  result
end

def find_cool(cool)
  result = []
  cool.each do |info|
    if info[:temperature] == "cool"
      result << info
    end
  end
  result
end

def organize_schools(schools)
  # { "NYC"=>["flatiron school bk", "flatiron school",
  # "general assembly"],
  #  "SF"=>["dev boot camp", "Hack Reactor"],
  #  "Chicago"=>["dev boot camp chicago"] }

  puts schools
  result = {}
  schools.each do |school|
    location = school[1][:location]
    if result[location].nil?
      result[location] = []
    end
    result[location] << school[0]
  end
  result
end
