require "pry"

def begins_with_r(tools)
  counter = 0

  tools.each do |word|
    if word.start_with?("r")
      counter += 1
    end
  end

  counter == tools.length
end

def contain_a(elements)
  elements_with_a = []

  elements.each do |string|
    if string.include?('a')
      elements_with_a << string
    end
  end

  elements_with_a
end

def first_wa(array)
  wa_array = []

  array.each do |word|
    if word.to_s.start_with? "wa"
      wa_array << word
    end
  end

  wa_array[0]
end

def remove_non_strings(array)
  strings_only_array = []

  array.each do |element|
    if element.to_s == element
      strings_only_array << element
    end
  end

  strings_only_array
end

def count_elements(array)
  array_with_count = []

  array.each do |hash|
    hash.each do |key, value|
      array_with_count << {:name => value, :count => array.count(hash)}
    end
  end

  array_with_count.uniq
end

def merge_data(keys, data)
  combine_keys_data = []

  keys.each do |name_only_hash|
    name_only_hash.each do |name_symbol, name_string|
      data.each do |attributes_array|
        attributes_array.each do |name_string2, attributes_hash|
          if name_string == name_string2
            combine_keys_data << name_only_hash.merge(attributes_hash)
          end
        end
      end
    end
  end

  combine_keys_data
end

def find_cool(cool)
  only_the_cool = []

  cool.each do |attributes_hash|
    attributes_hash.each do |name, attribute|
      if attribute == "cool"
        only_the_cool << attributes_hash
      end
    end
  end

  only_the_cool
end

def organize_schools(schools)
  schools_by_city = {}


  schools.each do |bootcamp, location_hash|
    location_hash.each do |location_symbol, city|
      unless schools_by_city.has_key?(city)
        schools_by_city[city] = []
      end
      schools_by_city.each do |city2, schools_array|
        if city == city2
          schools_array << bootcamp
        end
      end
    end
  end


  schools_by_city
end
