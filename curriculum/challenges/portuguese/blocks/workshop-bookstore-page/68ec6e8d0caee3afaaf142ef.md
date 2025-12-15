---
id: 68ec6e8d0caee3afaaf142ef
title: Passo 8
challengeType: 0
dashedName: step-8
---

# --description--

Você pode adicionar múltiplos elementos dentro de um elemento `div` para agrupar conteúdo relacionado. Dentro do elemento que possui uma `class` de `card-container`, crie outro elemento `div`. Este `div` representará o primeiro cartão de livro.

Adicione um atributo `class` a este novo elemento `div` e defina o valor do atributo `class` como `card`.

# --hints--

Você deve ter um elemento `div` aninhado dentro do elemento com uma classe `card-container`.

```js
assert.exists(document.querySelector('.card-container div'));
```

Seu novo elemento `div` deve ter um atributo `class`.

```js
assert.isTrue(document.querySelector('.card-container div')?.hasAttribute('class'));
```

Seu novo elemento `div` deve ter uma `class` com o valor `card`.

```js
assert.exists(document.querySelector('.card-container div.card'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>XYZ Bookstore Page</title>
</head>

<body>
  <h1>XYZ Bookstore</h1>
  <p>Browse our collection of amazing books!</p>
 --fcc-editable-region--
  <div class="card-container">

  </div>
--fcc-editable-region--
</body>

</html>
```
