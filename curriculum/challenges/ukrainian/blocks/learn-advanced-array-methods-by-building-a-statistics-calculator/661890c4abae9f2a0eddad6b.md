---
id: 661890c4abae9f2a0eddad6b
title: Крок 22
challengeType: 0
dashedName: step-22
---

# --description--

У наступних кількох кроках ви навчитеся визначати, чи є довжина масиву парною чи непарною, а також як знайти медіану. Потім ви зможете застосувати отримані знання у функції `getMedian`.

Щоб перевірити, чи є число парним або непарним, можна використати <dfn>оператор модуль</dfn> `%`. Оператор модуль повертає остачу від ділення двох чисел.

Ось приклад перевірки, чи є довжина масиву парною чи непарною:

```js
// check if array length is even
arr.length % 2 === 0;

// check if array length is odd
arr.length % 2 === 1;
```

Якщо остача дорівнює `0`, число парне. Якщо остача дорівнює `1`, число непарне.

Створіть змінну з назвою `isEven`. Потім використайте оператор модуль, щоб перевірити, чи є довжина масиву `testArr2` парною. Призначте цей вираз змінній `isEven`.

Під вашою змінною `isEven` виведіть у консоль змінну `isEven`.

Відкрийте консоль, щоб побачити результат.

# --hints--

У вас має бути змінна `isEven`.

```js
assert.isDefined(isEven);
```

Ви маєте перевірити, чи є довжина масиву `testArr2` парною. Зверніться до наданого прикладу: `arr.length % 2 === 0;`

```js
assert.isTrue(isEven);
```

У вас має бути інструкція `console.log`, яка виводить у консоль змінну `isEven`.

```js
assert.match(code, /console\.log\(isEven\)/);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="./styles.css" />
    <script src="./script.js"></script>
    <title>Statistics Calculator</title>
  </head>
  <body>
    <h1>Statistics Calculator</h1>
    <p>Enter a list of comma-separated numbers.</p>
    <form onsubmit="calculate(); return false;">
      <label for="numbers">Numbers:</label>
      <input type="text" name="numbers" id="numbers" />
      <button type="submit">Calculate</button>
    </form>
    <div class="results">
      <p>
        The <dfn>mean</dfn> of a list of numbers is the average, calculated by
        taking the sum of all numbers and dividing that by the count of numbers.
      </p>
      <p class="bold">Mean: <span id="mean"></span></p>
      <p>
        The <dfn>median</dfn> of a list of numbers is the number that appears in
        the middle of the list, when sorted from least to greatest.
      </p>
      <p class="bold">Median: <span id="median"></span></p>
      <p>
        The <dfn>mode</dfn> of a list of numbers is the number that appears most
        often in the list.
      </p>
      <p class="bold">Mode: <span id="mode"></span></p>
      <p>
        The <dfn>range</dfn> of a list of numbers is the difference between the
        largest and smallest numbers in the list.
      </p>
      <p class="bold">Range: <span id="range"></span></p>
      <p>
        The <dfn>variance</dfn> of a list of numbers measures how far the values
        are from the mean, on average.
      </p>
      <p class="bold">Variance: <span id="variance"></span></p>
      <p>
        The <dfn>standard deviation</dfn> of a list of numbers is the square
        root of the variance.
      </p>
      <p class="bold">
        Standard Deviation: <span id="standardDeviation"></span>
      </p>
    </div>
  </body>
</html>
```

```css
body {
  margin: 0;
  background-color: rgb(27, 27, 50);
  text-align: center;
  color: #fff;
}

button {
  cursor: pointer;
  background-color: rgb(59, 59, 79);
  border: 3px solid white;
  color: white;
}

input {
  background-color: rgb(10, 10, 35);
  color: white;
  border: 1px solid rgb(59, 59, 79);
}

.bold {
  font-weight: bold;
}
```

```js
const getMean = (array) => array.reduce((acc, el) => acc + el, 0) / array.length;

--fcc-editable-region--
const testArr1 = [1, 2, 3, 4, 5];
const testArr2 = [1, 2, 3, 4, 5, 6];

--fcc-editable-region--
const getMedian = (array) => {
  const sorted = array.sort((a, b) => a - b);
}

const calculate = () => {
  const value = document.querySelector("#numbers").value;
  const array = value.split(/,\s*/g);
  const numbers = array.map(el => Number(el)).filter(el => !isNaN(el));
  
  const mean = getMean(numbers);

  document.querySelector("#mean").textContent = mean;
}
```
