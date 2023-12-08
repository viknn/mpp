# frozen_string_literal: true

counter = 0
mutex = Mutex.new

threads = 10.times.map do
  Thread.new do
    100.times do
      mutex.synchronize do
        counter += 1
      end
    end
  end
end

threads.each(&:join)
puts "Counter: #{counter}"
