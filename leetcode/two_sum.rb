def two_sum(nums, target)
  seen = Hash.new(0)
  nums.each_with_index do |num, i|
    res = target - num
    return [seen[num], i] if seen.has_key?(res)
    seen[num] = i
    p seen
  end
  return [nil, nil]
end

if $0 == __FILE__
  numbers=[2, 7, 11, 15]
  target=9
  p two_sum(numbers, target)
end