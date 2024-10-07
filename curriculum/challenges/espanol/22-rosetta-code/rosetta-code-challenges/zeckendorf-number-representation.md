---
id: 594810f028c0303b75339ad6
title: Representación de números de Zeckendorf
challengeType: 1
forumTopicId: 302346
dashedName: zeckendorf-number-representation
---

# --description--

Así como los números pueden ser representados en una notación posicional como sumas de múltiplos de los poderes de diez (decimal) o dos (binario); todos los enteros positivos pueden ser representados como la suma de uno o cero veces los distintos miembros de la serie Fibonacci. Recuerda que los primeros seis números distintos de Fibonacci son: `1, 2, 3, 5, 8, 13`.

El número decimal once puede escribirse como `0*13 + 1*8 + 0*5 + 1*3 + 0*2 + 0*1` o `010100` en notación posicional donde las columnas representan multiplicación por un miembro en particular de la secuencia. Los ceros líderes se caen para que 11 decimales se conviertan en `10100`. 10100 no es la única manera de hacer 11 con los números de Fibonacci sin embargo `0*13 + 1*8 + 0*5 + 0*3 + 1*2 + 1*1` o 010011 también representaría 11 decimales. Para un número Zeckendorf verdadero existe la restricción añadida de que *no se pueden usar dos números de Fibonacci consecutivos* lo que conduce a la solución única anterior.

# --instructions--

Escribe una función que genere y devuelva la representación de números de Zeckendorf de `n`.

# --hints--

`zeckendorf` debe ser una función.

```js
assert.equal(typeof zeckendorf, 'function');
```

`zeckendorf0)` debe devolver `0`.

```js
assert.equal(zeckendorf(0), 0);

```

`zeckendorf(1)` debe devolver `1`.

```js
assert.equal(zeckendorf(1), 1);
```

`zeckendorf(2)` debe devolver `10`.

```js
assert.equal(zeckendorf(2), 10);
```

`zeckendorf(3)` debe devolver `100`.

```js
assert.equal(zeckendorf(3), 100);
```

`zeckendorf(4)` debe devolver `101`.

```js
assert.equal(zeckendorf(4), 101);
```

`zeckendorf(5)` debe devolver `1000`.

```js
assert.equal(zeckendorf(5), 1000);
```

`zeckendorf(6)` debe devolver `1001`.

```js
assert.equal(zeckendorf(6), 1001);
```

`zeckendorf(7)` debe devolver `1010`.

```js
assert.equal(zeckendorf(7), 1010);
```

`zeckendorf(8)` debe devolver `10000`.

```js
assert.equal(zeckendorf(8), 10000);
```

`zeckendorf(9)` debería devolver `10001`.

```js
assert.equal(zeckendorf(9), 10001);
```

`zeckendorf(10)` debería devolver `10010`.

```js
assert.equal(zeckendorf(10), 10010);
```

`zeckendorf(11)` debe devolver `10100`.

```js
assert.equal(zeckendorf(11), 10100);
```

`zeckendorf(12)` debe devolver `10101`.

```js
assert.equal(zeckendorf(12), 10101);
```

`zeckendorf(13)` debe devolver `100000`.

```js
assert.equal(zeckendorf(13), 100000);
```

`zeckendorf(14)` debe devolver `100001`.

```js
assert.equal(zeckendorf(14), 100001);
```

`zeckendorf(15)` debe devolver `100010`.

```js
assert.equal(zeckendorf(15), 100010);
```

`zeckendorf(16)` debe devolver `100100`.

```js
assert.equal(zeckendorf(16), 100100);
```

`zeckendorf(17)` debe devolver `100101`.

```js
assert.equal(zeckendorf(17), 100101);
```

`zeckendorf(18)` debe devolver `101000`.

```js
assert.equal(zeckendorf(18), 101000);
```

`zeckendorf(19)` debe devolver `101001`.

```js
assert.equal(zeckendorf(19), 101001);
```

`zeckendorf(20)` debe devolver `101010`.

```js
assert.equal(zeckendorf(20), 101010);
```

# --seed--

## --seed-contents--

```js
function zeckendorf(n) {

}
```

# --solutions--

```js
// zeckendorf :: Int -> Int
function zeckendorf(n) {
  const f = (m, x) => (m < x ? [m, 0] : [m - x, 1]);
  return parseInt((n === 0 ? ([0]) :
    mapAccumL(f, n, reverse(
      tail(fibUntil(n))
    ))[1]).join(''));
}

// fibUntil :: Int -> [Int]
let fibUntil = n => {
  const xs = [];
  until(
      ([a]) => a > n,
      ([a, b]) => (xs.push(a), [b, a + b]), [1, 1]
  );
  return xs;
};

let mapAccumL = (f, acc, xs) => (
  xs.reduce((a, x) => {
    const pair = f(a[0], x);

    return [pair[0], a[1].concat(pair[1])];
  }, [acc, []])
);

let until = (p, f, x) => {
  let v = x;
  while (!p(v)) v = f(v);
  return v;
};

const tail = xs => (
   xs.length ? xs.slice(1) : undefined
);

const reverse = xs => xs.slice(0).reverse();
```
