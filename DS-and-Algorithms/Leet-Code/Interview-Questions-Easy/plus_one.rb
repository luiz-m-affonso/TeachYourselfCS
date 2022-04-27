def plus_one(digits)
  number = digits.join.to_i
  number += 1
  number.to_s.chars.map(&:to_i)
end
