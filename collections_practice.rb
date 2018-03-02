# your code goes here
def begins_with_r(data)
  data.all? {|word| word.start_with?("r")}
end

def contain_a(data)
  data.select{|word| word.include?("a")}
end

def first_wa(data)
  data.find {|word| word =~ /wa/}
end

def remove_non_strings(data)
  data.keep_if {|word| word.is_a? String}
end

def count_elements(data)
  grouped = data.group_by(&:itself)
  grouped.map {|k,v| k.merge(count:v.length)}
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(data)
  data.map do |key, value|
    if key.fetch(:temperature) == "cool"
      [key,value]
    end
  end.flatten.compact
end

def organize_schools(data)
  new_hash = {}
  data.each do |key,value|
    location = value[:location]
    if new_hash[location]
      new_hash[location] << key
    else
      new_hash[location] = []
      new_hash[location] << key
    end
  end
  new_hash
end
