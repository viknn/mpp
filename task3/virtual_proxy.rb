# frozen_string_literal: true

# Реальний об'єкт
class RealImage
  def initialize(filename)
    @filename = filename
    load_image_from_disk
  end

  def display
    puts "Displaying #{@filename}"
  end

  private

  def load_image_from_disk
    puts "Loading image from disk: #{@filename}"
  end
end

# Віртуальний проксі
class ProxyImage
  def initialize(filename)
    @filename = filename
    @real_image = nil
  end

  def display
    # Реальний об'єкт створюється тільки при першому виклику display
    @real_image ||= RealImage.new(@filename)
    @real_image.display
  end
end

image = ProxyImage.new('example.jpg')

# Реальний об'єкт буде створений
image.display

# Повторний виклик display - реальний об'єкт вже існує,
# тому просто відображаємо його
image.display
