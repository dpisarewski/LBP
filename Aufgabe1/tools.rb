require "benchmark"

def benchmark(data, alg)
  time = Benchmark.measure { yield }
  puts "#{alg} benchmark for #{data.size} samples: #{time.format "%u"} s"
  time
end