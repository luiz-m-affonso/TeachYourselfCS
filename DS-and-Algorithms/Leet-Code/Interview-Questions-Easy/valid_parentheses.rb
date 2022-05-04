def valid_parentheses(s)
  stack = []
  s.each_char do |c|
    if c == '(' || c == '[' || c == '{'
      stack.push(c)
    else
      if stack.empty?
        return false
      else
        if c == ')' && stack.pop != '('
          return false
        elsif c == ']' && stack.pop != '['
          return false
        elsif c == '}' && stack.pop != '{'
          return false
        end
      end
    end
  end
  stack.empty?
end
