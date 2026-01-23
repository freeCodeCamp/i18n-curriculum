---
id: 5f356ed6cf6eab5f15f5cfe6
title: Passo 16
challengeType: 0
dashedName: step-16
---

# --description--

Ao contrário dos outros elementos de conteúdo que você usou até agora, o elemento `div` é usado principalmente para fins de layout de design. Adicione um elemento `div` dentro do elemento `body` e, em seguida, mova todos os outros elementos dentro do novo `div`.

Dentro da tag de abertura da `div`, adicione o atributo `id` com o valor de `menu`.

# --hints--

A sua tag de abertura `<div>` deve ter um atributo `id` definido como `menu`.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

Você deve ter uma tag de fechamento `</div>`.

```js
assert.match(code, /<\/div>/i);
```

Você não dever alterar o elemento `body` existente. Verifique se você não excluiu a tag de fechamento.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

O elemento `div` deve estar dentro do `body`.

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

Você deve mover todos os outros elementos dentro da nova `div`.

```js
assert.lengthOf(document.querySelector('body > div#menu > main')?.children, 3);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cafe Menu</title>
    <link href="styles.css" rel="stylesheet"/>
  </head>
  <body>
--fcc-editable-region--
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
--fcc-editable-region--
  </body>
</html>
```

```css
body {
  background-color: burlywood;
}

h1, h2, p {
  text-align: center;
}
```
