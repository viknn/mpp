# frozen_string_literal: true

mutex = Mutex.new
condition_var = ConditionVariable.new
current_thread = 1

thread1 = Thread.new do
  (1..10).each do |i|
    mutex.synchronize do
      condition_var.wait(mutex) while current_thread != 1

      puts "Thread 1: #{i}"
      current_thread = 2
      condition_var.signal
    end
  end
end

thread2 = Thread.new do
  (1..10).each do |i|
    mutex.synchronize do
      condition_var.wait(mutex) while current_thread != 2

      puts "Thread 2: #{i}"
      current_thread = 1
      condition_var.signal
    end
  end
end

thread1.join
thread2.join
