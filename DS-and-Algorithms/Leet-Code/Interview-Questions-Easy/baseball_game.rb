def cal_points(ops)
  points = []
  ops.each do |op|
    case op
    when 'C'
      points.pop
    when 'D'
      points << points[-1] * 2
    when '+'
      points << points[-1] + points[-2]
    else
      points << op.to_i
    end
  end
  points.reduce(:+)
end
