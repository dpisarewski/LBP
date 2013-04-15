#encoding: utf-8
require "./tools"
require "./algorithms"

MAX_RAND = 1000000
def demo(samples)
  data  = Array.new(samples) { rand MAX_RAND }
  #benchmark(data, "sort1") {sort1 data}
  benchmark(data, "sort2") {sort2 data}
end

samples = [100, 1000, 10000, 100000, 1000000]

samples.each do |s|
  demo(s)
end