---
id: 5dfa30b9eacea3f48c6300ad
title: Passo 17
challengeType: 0
dashedName: step-17
---

# --description--

In previous steps you used an anchor element to turn text into a link. Outros tipos de conteúdo também podem ser transformados em link, colocando-os dentro de tags de elementos de âncora.

Aqui está um exemplo de como transformar uma imagem em um link:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Transforme a imagem em um link, envolvendo-a com as tags dos elementos necessários. Use `https://freecatphotoapp.com` como valor do atributo `href` do elemento de âncora.

# --hints--

O valor do atributo `src` do elemento `img` deve estar definido como `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Você pode tê-lo excluído acidentalmente.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

O elemento de âncora (`a`) deve ter uma tag de abertura. Opening tags have this syntax: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

Está faltando uma tag de fechamento (`a`) após a imagem.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

O elemento de âncora (`a`) deve ter uma tag de fechamento. Closing tags have a `/` just after the `<` character.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Você deve adicionar apenas uma tag de fechamento para o elemento de âncora (`a`). Remova as tags adicionais.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

O elemento de âncora (`a`) não tem um atributo `href`. Verifique se há um espaço depois do nome da tag de abertura e/ou se há espaços antes de todos os nomes dos atributos.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

O elemento de âncora (`a`) deve fazer um link para `https://freecatphotoapp.com`. Você omitiu o URL ou tem um erro de digitação.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

O elemento de âncora (`a`) não tem um atributo `href`. Verifique se há um espaço depois do nome da tag de abertura e/ou se há espaços antes de todos os nomes dos atributos.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

O elemento de âncora (`a`) deve ter o link `https://freecatphotoapp.com`. Você omitiu o URL ou tem um erro de digitação.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Your `img` element should be nested within the anchor (`a`) element. The entire `img` element should be inside the opening and closing tags of the anchor (`a`) element.

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```

