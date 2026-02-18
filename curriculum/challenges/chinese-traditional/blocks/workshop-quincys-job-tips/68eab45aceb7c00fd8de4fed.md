---
id: 68eab45aceb7c00fd8de4fed
title: 第 11 步
challengeType: 0
dashedName: step-11
---

# --description--

在第二個 `section` 元素內，巢狀一個 `h2` 元素，並帶有文字 `Importance of Networking`。

在此標題下方，添加一個帶有 `cite` 屬性且值為 `https://www.freecodecamp.org/news/learn-to-code-book/` 的區塊引用元素。

# --hints--

你應該在第二個區段內巢狀一個 `h2` 元素。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

你的 `h2` 元素應該有文字 `Importance of Networking`。

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

你應該在第二個區段內巢狀放置一個 `blockquote` 元素。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

你的 `blockquote` 元素應該位於你的 `h2` 元素下方。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

你的 `blockquote` 元素應該有一個 `cite` 屬性。

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

你的 `blockquote` 元素的 `cite` 屬性應該具有值 `https://www.freecodecamp.org/news/learn-to-code-book/`。

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
