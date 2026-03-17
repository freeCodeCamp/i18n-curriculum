---
id: 68eab45aceb7c00fd8de4fed
title: Passaggio 11
challengeType: 0
dashedName: step-11
---

# --description--

All'interno del secondo elemento `section`, annida un elemento `h2` con il testo `Importance of Networking`.

Sotto questa intestazione, aggiungi un elemento block quotation con un attributo `cite` con valore `https://www.freecodecamp.org/news/learn-to-code-book/`.

# --hints--

Dovresti avere un elemento `h2` annidato all'interno della seconda sezione.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

Il tuo elemento `h2` dovrebbe avere il testo `Importance of Networking`.

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

Dovresti avere un elemento `blockquote` annidato all'interno della seconda sezione.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

Il tuo elemento `blockquote` dovrebbe essere sotto il tuo elemento `h2`.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

Il tuo elemento `blockquote` dovrebbe avere un attributo `cite`.

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

L'attributo `cite` del tuo elemento `blockquote` dovrebbe avere il valore `https://www.freecodecamp.org/news/learn-to-code-book/`.

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
