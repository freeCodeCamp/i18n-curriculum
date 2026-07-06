---
id: 68eab45aceb7c00fd8de4fed
title: الخطوة 11
challengeType: 0
dashedName: step-11
---

# --description--

داخل العنصر الثاني من نوع `section`، قم بتسكين عنصر `h2` يحتوي على النص `Importance of Networking`.

أسفل هذا العنوان، أضف عنصر اقتباس كتلي مع خاصية `cite` بقيمة `https://www.freecodecamp.org/news/learn-to-code-book/`.

# --hints--

يجب أن يكون لديك عنصر `h2` مسكن داخل القسم الثاني.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

يجب أن يحتوي عنصر `h2` على النص `Importance of Networking`.

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

يجب أن يكون لديك عنصر `blockquote` مسكن داخل القسم الثاني.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

يجب أن يكون عنصر `blockquote` أسفل عنصر `h2` الخاص بك.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

يجب أن يحتوي عنصر `blockquote` على خاصية `cite`.

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

يجب أن تكون قيمة خاصية `cite` في عنصر `blockquote` هي `https://www.freecodecamp.org/news/learn-to-code-book/`.

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
