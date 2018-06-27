class Hash
  def ninvert
    inject({}) { |h,(k,v)| (h[v] ||= []) << k; h }
  end
end

class Array
  def mode
    (inject(Hash.new(0)) { |h,e| h[e] += 1; h }.ninvert.max ||
[[]]).last
  end
end

p [3, 1, 1, 2, 4,2,3,2].mode
p [1,2,3,4].mode

