---
id: 68eab45aceb7c00fd8de4fed
title: Крок 11
challengeType: 0
dashedName: step-11
---

# --description--

Всередині другого `section` елемента вкладіть `h2` елемент із текстом `Importance of Networking`.

Під цим заголовком додайте елемент блочного цитування з атрибутом `cite` зі значенням `https://www.freecodecamp.org/news/learn-to-code-book/`.

# --hints--

У другому розділі має бути вкладений `h2` елемент.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

Ваш `h2` елемент має містити текст `Importance of Networking`.

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

У другому розділі має бути вкладений `blockquote` елемент.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

Ваш `blockquote` елемент має бути розташований нижче за `h2` елемент.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

Ваш `blockquote` елемент має мати атрибут `cite`.

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

Атрибут `cite` вашого `blockquote` елемента має мати значення `https://www.freecodecamp.org/news/learn-to-code-book/`.

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
