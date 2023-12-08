# frozen_string_literal: true

# метод для відновлення властивостей купи починаючи з заданого індексу i
def heapify(arr, n, i)
  largest = i
  left = 2 * i + 1    # індекс лівого дочірнього вузла у бінарному дереві
  right = 2 * i + 2   # індекс правого дочірнього вузла у бінарному дереві

  # порівнюємо значення лівого дочірнього вузла з батьківським вузлом
  if left < n && arr[left] > arr[largest]
    largest = left
  end

  # порівнюємо значення правого дочірнього вузла з батьківським вузлом
  if right < n && arr[right] > arr[largest]
    largest = right
  end

  # якщо індекс найбільшого елемента не рівний i, обміняти значення і
  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]
    heapify(arr, n, largest)
  end
end

# пірамідальне сортування
def heap_sort(arr)
  n = arr.length

  # будуємо максимальну купу, починаючи з середини масиву і працюючи до початку
  i = n / 2 - 1
  while i >= 0
    heapify(arr, n, i)
    i -= 1
  end

  # поступово вилучаємо найбільший елемент (корінь) та відновлюємо властивості купи
  i = n - 1
  while i >= 1
    arr[i], arr[0] = arr[0], arr[i]
    heapify(arr, i, 0)
    i -= 1
  end
end

arr = [55, 4, 33, 15, 6, 7]
puts "Масив перед сортуванням: #{arr}"
heap_sort(arr)
puts "Масив після сортування: #{arr}"
