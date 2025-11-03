---
id: 68eab45aceb7c00fd8de4fed
title: Passo 11
challengeType: 0
dashedName: step-11
---

# --description--

Dentro do segundo elemento `section`, aninhe um elemento `h2` com o texto `Importance of Networking`.

Abaixo deste título, adicione um elemento de citação em bloco com um atributo `cite` com o valor `https://www.freecodecamp.org/news/learn-to-code-book/`.

# --hints--

Você deve ter um elemento `h2` aninhado dentro da segunda seção.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

Seu elemento `h2` deve ter o texto `Importance of Networking`.

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

Você deve ter um elemento `blockquote` aninhado dentro da segunda seção.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

Seu elemento `blockquote` deve estar abaixo do seu elemento `h2`.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

Seu elemento `blockquote` deve ter um atributo `cite`.

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

O atributo `cite` do seu elemento `blockquote` deve ter o valor `https://www.freecodecamp.org/news/learn-to-code-book/`.

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
      <q cite="https://www.freecodecamp.org/news/learn-to-code-book/"
        >You can become a developer.<
      /q>
    </p>

    <main>
      <section>
        <h2>Envisioning Success</h2>
        <blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
          Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?
        </blockquote>
        <p cite="https://www.freecodecamp.org/news/learn-to-code-book/">
          —Quincy Larson, <cite>How to Learn to Code and Get a Developer Job [Full Book]</cite>
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
