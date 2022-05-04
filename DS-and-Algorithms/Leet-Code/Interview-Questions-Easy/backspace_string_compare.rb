def compare_strings(first_string, second_string)
  first_string = first_string.chars.reject { |char| char == '#' }.join
  second_string = second_string.chars.reject { |char| char == '#' }.join
  first_string == second_string
end
