require "./tools"

def subset_sum(set, s)
  return true   if s == 0
  return false  if set.empty?

  subset = set[1...set.size]
  subset_sum(subset, s - set.first) or subset_sum(subset, s)
end

MAX_RAND = 1000000
def demo(samples)
  data = Array.new(samples){ rand(MAX_RAND)}

  benchmark(data, "subset-sum") do
    subset_sum(data, rand(MAX_RAND))
  end
end

(1..100).each do |s|
  demo(s)
end

