require 'pry'
class Solution
  def solution(a, b)
    posa = 0
    posb = 0
    1.upto(100000000) do |n|
      #north east
      if a > posa && b > posb
        if (a - posa) >= (b - posb)
	  posa += 2
	  posb += 1
	elsif (a - posa) < (b - posb)
	  posa += 1
	  posb += 2
	end
      end
      #north west
      if a < posa && b > posb
        if (a - posa) >= (b - posb)
	  posa -= 2
	  posb += 1
	elsif (a - posa) < (b - posb)
	  posa -= 1
	  posb += 2
	end
      end
      #south west
      if a < posa && b < posb
        if (a - posa) >= (b - posb)
	  posa -= 2
	  posb -= 1
	elsif (a - posa) < (b - posb)
	  posa -= 1
	  posb -= 2
	end
      end
      #south east
      if a > posa && b < posb
        if (a - posa) >= (b - posb)
	  posa += 2
	  posb -= 1
	elsif (a - posa) < (b - posb)
	  posa += 1
	  posb -= 2
	end
      end
      #north
      if a == posa && b > posb
	if b - posb > 2
	  posa += 1
	  posb += 2
	else
	  posa += 2
	  posb += 1
	end
      end
      #south
      if a == posa && b < posb
	if posb - b > 2
	  posa += 1
	  posb -= 2
	else
	  posa += 2
	  posb += 1
	end
      end
      #east
      if a > posa && b == posb
	if a - posa > 2
	  posa += 2
	  posb += 1
	else
	  posa += 1
	  posb += 2
	end
      end
      #west
      if a < posa && b == posb
	if posa - a > 2
	  posa -= 2
	  posb += 1
	else
	  posa -= 1
	  posb += 2
	end
      end
      if posa == a && posb == b
	return n
      end
    end
  end
end
