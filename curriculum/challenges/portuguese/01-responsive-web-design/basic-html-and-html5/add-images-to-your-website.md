---
id: bad87fee1348bd9aedf08812
title: Adicionar imagens ao seu site
challengeType: 0
forumTopicId: 16640
dashedName: add-images-to-your-website
---

# --description--

You can add images to your website by using the `img` element, and point to a specific image's URL using the `src` attribute.

Exemplo:

```html
<img src="https://www.freecatphotoapp.com/your-image.jpg">
```

Note that `img` is a void element.

Todos os elementos `img` **precisam** ter um atributo `alt`. O texto de um atributo `alt` é usado por leitores de tela para melhorar a acessibilidade. Ele é exibido se a imagem não puder ser carregada.

**Observação:** usar um atributo `alt` vazio é uma prática recomendada se a imagem for meramente ilustrativa.

Preferencialmente, o atributo `alt` não deve conter caracteres especiais, a menos que isso seja necessário.

Vamos adicionar um atributo `alt` ao nosso exemplo `img` acima:

```html
<img src="https://www.freecatphotoapp.com/your-image.jpg" alt="freeCodeCamp logo">
```

# --instructions--

Tente adicionar uma imagem ao seu site:

Dentro do elemento `main` existente, insira um elemento `img` antes dos elementos `p` existentes.

Agora defina o atributo `src` para que ele aponte para o URL `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`

Por fim, não se esqueça de dar ao elemento `img` um atributo `alt` com um texto adequado.

# --hints--

A página deve ter um elemento de imagem.

```js
assert.exists(document.querySelector('img'));
```

A imagem deve ter um atributo `src` que aponte para o caminho da imagem do gatinho.

```js
const url = document.querySelector('img').getAttribute('src');
assert.match(url,/^https:\/\/cdn\.freecodecamp\.org\/curriculum\/cat-photo-app\/relaxing-cat\.jpg$/i);
```

O atributo `alt` do elemento de imagem não deve estar vazio.

```js
assert.exists(document.querySelector('img').getAttribute('alt'));
assert.isNotEmpty(document.querySelector('img').getAttribute('alt'));
assert.match(__helpers.removeWhiteSpace(code),/<(?:img|IMG)\S*alt=(['"])(?!\1|>)\S+\1\S*\/?>/)
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>


  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
