# MPP

## Task 1
```
Зробити невелику скрипт гру "камень ножиці папір".
На вхід передаємо предмет у вигляді аргументу командного рядка
На виході результат

EX: 
input --> ruby game.rb Stone Paper
output --> You lose
```

## Task 2
```
Зробити невеликий скрипт 
На вхід передаємо математичний вираз у звичному нам вигляді
На виході бачимо його у RPN

EX: 
input --> 2 + 1 × 4
output --> 2 1 4 * +
```

## Task 3
```
Навести приклад паттерну Proxy
```

## Task 4
```
Написати програму яка приймає на вхід "пиріг з родзинками"
cake = 
  ........
  ..o.....
  ...o....
  ........
// o це родзинки

Нам потрібно рівно розрізати пиріг на n маленьких прямокутних шматочків так,
щоб у кожному маленькому пирізі була 1 родзинка. n не є аргументом, 
це кількість родзинок усередині торта
cake = 
  ........
  ..o.....
  ...o....
  ........
 
Результат ось такий масив
  [
     ........
     ..o.....
  ,
     ...o....
     ........
  ]
  
Кількість родзинок завжди більше 1 та менше 10.
Якщо рішень кілька, виберіть те, що має найбільшу ширину першого елемента масиву.
Поступово розрізати на n частин, що означає однакову площу. Але їхня форма може бути різною.
Кожен шматок торта має бути прямокутним.
```

## Task 5
```
Треба написати програму, яка перетворює римську цифру в ціле число та навпаки.

Сучасні римські цифри записуються, виражаючи кожну цифру окремо, 
починаючи з крайньої лівої цифри та пропускаючи будь-яку цифру зі значенням нуль. 
Римськими цифрами 1990 позначається: 1000=M, 900=CM, 90=XC; 
в результаті MCMXC. 2008 записується як 2000=MM, 8=VIII; або MMVIII. 
1666 використовує кожен римський символ у порядку спадання: MDCLXVI.

Діапазон введення: 1 <= n < 4000
4 має бути представлено як IV.
```

## Task 6
```
Реалізуйте метод, який повертатиме true, якщо заданий аргумент строки є IPv4-адресою - чотири
числа (0-255), розділені крапками. Він повинен приймати лише адреси в канонічному представленні,
тобто без ведучих нулів, пропусків тощо.
```

## КР1
```
3. Створіть клас "Книга" з властивостями, такими як назва, автор і рік видання.
Напишіть методи для отримання та встановлення цих властивостей.
4. Напишіть програму, яка приймає список слів і виводить кожне слово у вигляді
абревіатури, наприклад, "центральний обробник одиниць" стає "ЦОО".
```

## Task 7
```
Зробити ruby script котрий буде парсити сайт: https://en.wikipedia.org/wiki/List_of_libraries
Використовувати гем https://github.com/sparklemotion/nokogiri
зробити CSV файл
```

## КР2
```
Напишіть програму, у якій два потоки виводять числа від 1 до 10.
Організуйте синхронізацію, щоб числа виводилися по черзі: спочатку першого потоку, потім із другого, тощо.
```