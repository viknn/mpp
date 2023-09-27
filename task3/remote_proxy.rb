# frozen_string_literal: true

# Віддалений об'єкт
class RemoteImage
  def initialize(image_url)
    @image_url = image_url
  end

  def display
    puts "Displaying image from remote: #{@image_url}"
  end
end

# Проксі, що представляє віддалений об'єкт
class RemoteImageProxy
  def initialize(image_url)
    @remote_image = RemoteImage.new(image_url)
  end

  def display
    @remote_image.display
  end
end

remote_image_url = 'https://example.com/image.jpg'
remote_image_proxy = RemoteImageProxy.new(remote_image_url)

# Відображення зображення через проксі
remote_image_proxy.display
