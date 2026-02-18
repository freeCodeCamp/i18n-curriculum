---
id: 68eab45aceb7c00fd8de4fed
title: 步骤11
challengeType: 0
dashedName: step-11
---

# --description--

在第二个 `section` 元素内，嵌套一个带有文本 `Importance of Networking` 的 `h2` 元素。

在此标题下，添加一个带有 `cite` 属性且值为 `https://www.freecodecamp.org/news/learn-to-code-book/` 的块引用元素。

# --hints--

你应该在第二个部分内嵌套一个 `h2` 元素。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

你的 `h2` 元素应包含文本 `Importance of Networking`。

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

你应该在第二个部分内嵌套一个 `blockquote` 元素。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

你的 `blockquote` 元素应位于你的 `h2` 元素下方。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

你的 `blockquote` 元素应具有 `cite` 属性。

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

你的 `blockquote` 元素的 `cite` 属性应具有值 `https://www.freecodecamp.org/news/learn-to-code-book/`。

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
