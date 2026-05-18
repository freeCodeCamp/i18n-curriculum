---
id: 661890c4abae9f2a0eddad6b
title: Schritt 22
challengeType: 0
dashedName: step-22
---

# --description--

In den nächsten Schritten lernen Sie, wie Sie feststellen, ob die Länge eines Arrays gerade oder ungerade ist, und wie Sie den Median finden. Anschließend können Sie das Gelernte auf die `getMedian`-Funktion anwenden.

Um zu überprüfen, ob eine Zahl gerade oder ungerade ist, können Sie den <dfn>Modulus-Operator</dfn> `%` verwenden. Der Modulus-Operator gibt den Rest der Division zweier Zahlen zurück.

Hier ist ein Beispiel, das überprüft, ob die Länge eines Arrays gerade oder ungerade ist:

```js
// check if array length is even
arr.length % 2 === 0;

// check if array length is odd
arr.length % 2 === 1;
```

Wenn der Rest `0` ist, ist die Zahl gerade. Wenn der Rest `1` ist, ist die Zahl ungerade.

Erstellen Sie eine Variable namens `isEven`. Verwenden Sie dann den Modulus-Operator, um zu prüfen, ob die Länge des `testArr2`-Arrays gerade ist. Weisen Sie diesen Ausdruck der `isEven`-Variable zu.

Unterhalb Ihrer `isEven`-Variable geben Sie die `isEven`-Variable in der Konsole aus.

Öffnen Sie die Konsole, um das Ergebnis zu sehen.

# --hints--

Sie sollten eine `isEven`-Variable haben.

```js
assert.isDefined(isEven);
```

Sie sollten prüfen, ob die Länge des `testArr2`-Arrays gerade ist. Orientieren Sie sich an dem für Sie bereitgestellten Beispiel: `arr.length % 2 === 0;`

```js
assert.isTrue(isEven);
```

Sie sollten eine `console.log`-Anweisung haben, die die `isEven`-Variable ausgibt.

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
