---
id: 66cc1ccfefdd727e18c2ab20
title: Schritt 14
challengeType: 1
dashedName: step-14
---

# --description--

Ihr `calculateQuotient` scheint korrekt zu funktionieren, aber es gibt einen Fall, den Sie noch nicht getestet haben.

Fügen Sie einen `console.log` hinzu, der die `calculateQuotient`-Funktion mit den Argumenten `3` und `0` aufruft.

Achten Sie genau auf die Ausgabe dieses Aufrufs.

# --hints--

Sie sollten einen `console.log` haben, der die `calculateQuotient`-Funktion mit den Argumenten `3` und `0` aufruft.

```js
assert.match(code, /console\.log\s*\(\s*calculateQuotient\s*\(\s*3\s*,\s*0\s*\)\s*\)\s*;?/);
```

# --seed--

## --seed-contents--

```js
function calculateSum(num1, num2) {
  return num1 + num2;
}

console.log(calculateSum(2, 5));
console.log(calculateSum(10, 10));
console.log(calculateSum(5, 5));

function calculateDifference(num1, num2) {
  return num1 - num2;
}

console.log(calculateDifference(22, 5));
console.log(calculateDifference(12, 1));
console.log(calculateDifference(17, 9));

function calculateProduct(num1, num2) {
  return num1 * num2;
}

console.log(calculateProduct(13, 5));

function calculateQuotient(num1, num2) {
  return num1 / num2;
}

console.log(calculateQuotient(7, 11));

--fcc-editable-region--

--fcc-editable-region--
```
