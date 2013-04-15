#encoding: utf-8
require "./tools"
require "./algorithms"

MAX_RAND = 1000000
def demo(samples)
  data = Array.new(samples){ rand(MAX_RAND)}

  time = benchmark(data, "subset-sum") do
    subset_sum(data, rand(MAX_RAND))
  end
  label, cpu_time = *time.to_a
  cpu_time
end

s = 0
begin
  time = demo(s+=1)
end while time < 30

puts "Der Algorithmus kann höchstens #{s - 1} zahlen innerhalb von 30 Sekunden berechnen."

