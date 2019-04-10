 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# a = a.map { |e|  e = e +  1  }
# a = a.map { |e|  e.to_f }
# a = a.map { |e|  e.to_s }
# a = a.reject { |e|  e < 5 }
# a = a.reject { |e|  e > 5 }
# a = a.group_by { |e| e.even? }
a = a.group_by { |e| e < 6 }

puts a
