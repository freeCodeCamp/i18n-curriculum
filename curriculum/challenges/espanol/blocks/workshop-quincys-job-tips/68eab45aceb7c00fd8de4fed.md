---
id: 68eab45aceb7c00fd8de4fed
title: Paso 11
challengeType: 0
dashedName: step-11
---

# --description--

Dentro del segundo elemento `section`, anida un elemento `h2` con el texto `Importance of Networking`.

Debajo de este encabezado, agrega un elemento de cita en bloque con un atributo `cite` con el valor `https://www.freecodecamp.org/news/learn-to-code-book/`.

# --hints--

Debes tener un elemento `h2` anidado dentro de la segunda sección.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

Tu elemento `h2` debe tener el texto `Importance of Networking`.

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

Debes tener un elemento `blockquote` anidado dentro de la segunda sección.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

Tu elemento `blockquote` debe estar debajo de tu elemento `h2`.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

Tu elemento `blockquote` debe tener un atributo `cite`.

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

El atributo `cite` de tu elemento `blockquote` debe tener el valor `https://www.freecodecamp.org/news/learn-to-code-book/`.

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.equal(blockquoteEl?.getAttribute('cite'), 'https://www.freecodecamp.org/news/learn-to-code-book/');
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quincy's Tips for Getting a Developer Job</title>
  </head>
  <body>
    <h1>Quincy's Tips for Getting a Developer Job</h1>
    <p>
      Learning to code is hard, but as Quincy Larson says,
      <q cite="https://www.freecodecamp.org/news/learn-to-code-book/">You can become a developer.</q>
    </p>

    <main>
      <section>
        <h2>Envisioning Success</h2>
        <blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
          Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?
        </blockquote>
        <p>
          &mdash;Quincy Larson, <cite>How to Learn to Code and Get a Developer Job [Full Book]</cite>
        </p>
      </section>
      <section>
--fcc-editable-region--
        
--fcc-editable-region--
      </section>
      <section>

      </section>
    </main>
  </body>
</html>
```
