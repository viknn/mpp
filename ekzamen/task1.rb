# frozen_string_literal: true

# існуючий клас з несумісним інтерфейсом
class Adaptee
  def specific_request
    'Specific request'
  end
end

# інтерфейс, який ми хочемо використовувати
class Target
  def request
    'Generic request'
  end
end

# клас-адаптер, який перетворює інтерфейс
class Adapter < Target
  def initialize(adaptee)
    @adaptee = adaptee
  end

  def request
    @adaptee.specific_request
  end
end

# клієнтський код
adaptee = Adaptee.new
adapter = Adapter.new(adaptee)

puts "Adaptee: #{adaptee.specific_request}"
puts "Adapter: #{adapter.request}"
