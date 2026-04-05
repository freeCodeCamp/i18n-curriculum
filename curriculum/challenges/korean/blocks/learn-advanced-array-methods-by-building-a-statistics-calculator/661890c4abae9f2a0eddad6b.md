---
id: 661890c4abae9f2a0eddad6b
title: 22단계
challengeType: 0
dashedName: step-22
---

# --description--

다음 몇 단계에서는 배열의 길이가 짝수인지 홀수인지 확인하는 방법과 중앙값을 찾는 방법을 배우게 됩니다. 그런 다음 배운 내용을 `getMedian` 함수에 적용할 수 있습니다.

숫자가 짝수인지 홀수인지 확인하려면 <dfn>나머지 연산자</dfn> `%`를 사용할 수 있습니다. 나머지 연산자는 두 수를 나눈 나머지를 반환합니다.

다음은 배열 길이가 짝수인지 홀수인지 확인하는 예입니다:

```js
// check if array length is even
arr.length % 2 === 0;

// check if array length is odd
arr.length % 2 === 1;
```

나머지가 `0`이면 숫자는 짝수입니다. 나머지가 `1`이면 숫자는 홀수입니다.

`isEven`라는 변수를 만드세요. 그런 다음 나머지 연산자를 사용해 `testArr2` 배열의 길이가 짝수인지 확인하세요. 그 표현식을 `isEven` 변수에 할당하세요.

`isEven` 변수 아래에 `isEven` 변수를 콘솔에 출력하세요.

결과를 확인하려면 콘솔을 열어보세요.

# --hints--

`isEven` 변수가 있어야 합니다.

```js
assert.isDefined(isEven);
```

`testArr2` 배열의 길이가 짝수인지 확인해야 합니다. 제공된 예제를 참고하세요: `arr.length % 2 === 0;`

```js
assert.isTrue(isEven);
```

`console.log` 변수를 출력하는 `isEven` 문장이 있어야 합니다.

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
