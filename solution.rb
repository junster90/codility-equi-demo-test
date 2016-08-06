def solution(a)
  left_sum = 0
  right_sum = a.reduce(:+)

  a.each_with_index do |n, i|
    left_sum += a[i-1] if i > 0
    right_sum -= n

    return i if left_sum == right_sum
  end

  -1
end