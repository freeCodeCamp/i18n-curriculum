---
id: 66ed8fd0f45ce3ece4053eaf
title: Questionário sobre seletores de atributos em CSS
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 9 das 10 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

Para que servem os seletores de atributo CSS?

#### --distractors--

Para aplicar estilos a elementos com base no nome da tag.

---

Para aplicar estilos a elementos com base no nome da sua classe.

---

Para aplicar estilos a elementos com base no seu elemento pai.

#### --answer--

Para aplicar estilos aos elementos com base em seus atributos.

### --question--

#### --text--

Qual dos seguintes NÃO será selecionado por este seletor CSS?

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

Qual seletor CSS corresponde a todos os elementos `p` com um atributo `lang` definido como `"fr"`?

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

Qual seletor CSS corresponde a todos os elementos `a` com um atributo `href`?

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

Qual seletor CSS corresponde a todas as listas ordenadas com numerais romanos maiúsculos?

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

Para que serve comumente o atributo `data-lang`?

#### --distractors--

Para especificar o idioma do documento.

---

Para definir a codificação de caracteres do documento.

---

Para definir o idioma de um elemento com base no seu elemento pai.

#### --answer--

Para aplicar estilos aos elementos com base neste atributo de dados personalizado.

### --question--

#### --text--

Qual seletor CSS você deve usar para estilizar elementos `img` somente se o atributo `alt` for igual a `"code"`?

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

Qual seletor CSS corresponde a listas ordenadas com um tipo de numeração numérica?

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

Qual dos seguintes seletores CSS você usaria para estilizar elementos `a` que possuem os atributos `href` e `title`?

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

Qual seletor CSS você usaria se estivesse desenvolvendo um site para um restaurante e quisesse estilizar todos os elementos com a classe `menu-item` que possuem um atributo `data-special`?

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```

