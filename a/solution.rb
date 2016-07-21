require 'pry'
class Solution
  def solution(x, a)
    min = 0
    max = a.size - 1
    until min == max
      guess = (min + max) / 2
      bottom_equal = a[0..(guess - 1)].count(x)
      top_different = a[guess..-1].count { |n| n != x }
      if bottom_equal < top_different
	min = guess + 1
      elsif bottom_equal > top_different
	max = guess - 1
      end
    end

    guess = (min + max) / 2
    guess
  end
end
