---
id: 587d7fac367417b2b2512bdb
title: Impostare un dominio e un intervallo su una scala
challengeType: 6
forumTopicId: 301491
dashedName: set-a-domain-and-a-range-on-a-scale
---

# --description--

By default, scales use the identity relationship. This means the input value maps to the output value. However, scales can be much more flexible and interesting.

Diciamo che un set di dati ha valori che vanno da 50 a 480. Queste sono le informazioni di input per una scala, noto anche come il <dfn>dominio</dfn>.

Vuoi mappare quei punti lungo l'asse `x` sull'SVG, tra 10 unità e 500 unità. Queste sono le informazioni di output, note anche come <dfn>l'intervallo</dfn>.

I metodi `domain()` e `range()` impostano questi valori per la scala. Entrambi i metodi prendono un array di almeno due elementi come argomento. Ecco un esempio:

```js
scale.domain([50, 480]);
scale.range([10, 500]);
scale(50);
scale(480);
scale(325);
scale(750);
d3.scaleLinear();
```

In ordine, i seguenti valori saranno visualizzati nella console: `10`, `500`, `323.37`, e `807.67`.

Si noti che la scala utilizza la relazione lineare tra i valori del dominio e dell'intervallo per capire quale dovrebbe essere l'output per un dato numero. Il valore minimo nel dominio (50) mappa al valore minimo (10) nell'intervallo.

# --instructions--

Crea una scala e imposta il suo dominio a `[250, 500]` e intervallo a `[10, 150]`.

**Nota:** Puoi concatenare i metodi `domain()` e `range()` sulla variabile `scale`.

# --hints--

Il tuo codice dovrebbe usare il metodo `domain()`.

```js
assert.match(code, /\.domain/g);
```

Il `domain()` della scala `scale` dovrebbe essere impostato a `[250, 500]`.

```js
assert.deepEqual(scale.domain(), [250, 500]);
```

Il tuo codice dovrebbe usare il metodo `range()`.

```js
assert.match(code, /\.range/g);
```

L'intervallo `range()` della `scale` dovrebbe essere impostato a `[10, 150]`.

```js
assert.deepEqual(scale.range(), [10, 150]);
```

Il testo nell'`h2` dovrebbe essere `-102`.

```js
assert.strictEqual(document.querySelector('h2')?.textContent, '-102');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    // Add your code below this line
    const scale = d3.scaleLinear();



    // Add your code above this line
    const output = scale(50);
    d3.select('body').append('h2').text(output);
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const scale = d3.scaleLinear();
    scale.domain([250, 500]);
    scale.range([10, 150]);
    const output = scale(50);
    d3.select('body').append('h2').text(output);
  </script>
</body>
```
