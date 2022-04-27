def identify_titles(scores)
  increasing = decreasing = true

  (0...scores.length() - 1).each do |i|
    if scores[i] > scores[i+1]
      increasing = false
    end

    if scores[i] < scores[i+1]
      decreasing = false
    end
  end

  return increasing || decreasing
end