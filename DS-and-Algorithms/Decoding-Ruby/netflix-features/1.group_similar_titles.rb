# Time Complexity: O(n)

# Space Complexity: O(n)

def group_title(strings)
  strings.group_by { |s| s.split(/\s+/) }
end
def group_title(strings)
  result = {}
  strings.each do |string|
    string.each_char do |c|
      index = c.ord - 'a'.ord
      count[index] += 1
    end

    key = count.to_a
    if result.include? key
      result[key] << string
    else
      result[key] = [string]
    end
  end
  return result.values
end
