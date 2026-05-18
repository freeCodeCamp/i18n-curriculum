---
id: 68eab45aceb7c00fd8de4fed
title: Hatua 11
challengeType: 0
dashedName: step-11
---

# --description--

Ndani ya kipengele cha pili cha `section`, panga ndani kipengele cha `h2` chenye maandishi ya `Importance of Networking`.

Chini ya kichwa hiki cha sehemu, ongeza kipengele cha nukuu ya kipande chenye sifa ya `cite` yenye thamani ya `https://www.freecodecamp.org/news/learn-to-code-book/`.

# --hints--

Unapaswa kuwa na kipengele cha `h2` kilichopangwa ndani ya sehemu ya pili.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

Kipengele chako cha `h2` kinapaswa kuwa na maandishi ya `Importance of Networking`.

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

Unapaswa kuwa na kipengele cha `blockquote` kilichopangwa ndani ya sehemu ya pili.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

Kipengele chako cha `blockquote` kinapaswa kuwa chini ya kipengele chako cha `h2`.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

Kipengele chako cha `blockquote` kinapaswa kuwa na sifa ya `cite`.

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

Sifa ya `cite` ya kipengele chako cha `blockquote` inapaswa kuwa na thamani ya `https://www.freecodecamp.org/news/learn-to-code-book/`.

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
