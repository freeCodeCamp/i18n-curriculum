---
id: 68eab45aceb7c00fd8de4fed
title: ステップ 11
challengeType: 0
dashedName: step-11
---

# --description--

2番目の`section`要素の中に、テキストが`h2`の`Importance of Networking`要素をネストしてください。

この見出しの下に、属性`cite`が値`https://www.freecodecamp.org/news/learn-to-code-book/`のブロック引用要素を追加してください。

# --hints--

2番目のセクションの中に`h2`要素がネストされているはずです。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2'));
```

`h2`要素にはテキスト`Importance of Networking`があるはずです。

```js
const h2El = document.querySelector('main > section:nth-of-type(2) > h2');
assert.equal(h2El?.innerText.trim(), 'Importance of Networking');
```

2番目のセクションの中に`blockquote`要素がネストされているはずです。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > blockquote'));
```

`blockquote`要素は`h2`要素の下にあるはずです。

```js
assert.exists(document.querySelector('main > section:nth-of-type(2) > h2 + blockquote'));
```

`blockquote`要素には`cite`属性があるはずです。

```js
const blockquoteEl = document.querySelector('main > section:nth-of-type(2) > blockquote');
assert.exists(blockquoteEl?.getAttribute('cite'));
```

`cite`要素の`blockquote`属性は値`https://www.freecodecamp.org/news/learn-to-code-book/`であるはずです。

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
