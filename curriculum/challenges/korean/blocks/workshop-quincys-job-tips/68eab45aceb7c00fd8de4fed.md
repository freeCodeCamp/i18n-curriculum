---
id: 68eab45aceb7c00fd8de4fed
title: 11단계
challengeType: 0
dashedName: step-11
---

# --description--

두 번째 `section` 요소 안에 텍스트 `h2`를 가진 `Importance of Networking` 요소를 중첩하세요.

이 제목 아래에 값이 `cite`인 `https://www.freecodecamp.org/news/learn-to-code-book/` 속성을 가진 인용 블록 요소를 추가하세요.

# --hints--

두 번째 섹션 안에 `h2` 요소가 중첩되어 있어야 합니다.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

`h2` 요소에는 텍스트 `Importance of Networking`가 있어야 합니다.

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

두 번째 섹션 안에 `blockquote` 요소가 중첩되어 있어야 합니다.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

`blockquote` 요소는 `h2` 요소 아래에 있어야 합니다.

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

`blockquote` 요소에는 `cite` 속성이 있어야 합니다.

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

`cite` 요소의 `blockquote` 속성은 값이 `https://www.freecodecamp.org/news/learn-to-code-book/`여야 합니다.

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
