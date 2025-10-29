---
id: 672bbec3b86dbdaa07a5a5be
title: Quais são exemplos de pseudo-classes funcionais?
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

Pseudo-classes funcionais permitem que você selecione elementos com base em condições ou relacionamentos mais complexos. Ao contrário das pseudo-classes regulares que têm como alvo elementos com base em um estado, por exemplo, `:hover` e `:focus`, pseudo-classes funcionais aceitam argumentos entre parênteses, daí o nome "pseudo-classes funcionais".

Exemplos de pseudo-classes funcionais são:

- `:is()`
- `:where()`
- `:has()`
- `:not()`

Vamos analisar mais detalhadamente cada uma dessas pseudo-classes funcionais com exemplos.

A pseudo-classe `:is()` é útil quando você quer estilizar um grupo de elementos que compartilham algumas, mas não todas, as características. Por exemplo, você pode querer estilizar diferentes tipos de botões no seu site, incluindo elementos `button`, links estilizados como botões e elementos `input` com os tipos `submit` e `reset`.  Here's an example representing that. Sem a função `:is()`, você teria que escrever um seletor complexo assim:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: blue;
  border-color: blue;
}
```

:::

Com a função `:is()`, você pode escrever um seletor mais compacto e compreensível assim:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}
```

:::

A pseudo-classe `:where()` funciona de forma semelhante a `:is()`, mas não aumenta a especificidade dos seus seletores. Isso o torna ideal para aplicar estilos sem afetar a especificidade de outras regras.

Por exemplo, você pode usar a função `:where()` para aplicar `margin` e `padding` zero aos elementos de título. Isso garante que o reset não interfira com estilos mais específicos que você possa aplicar depois.  Here's an example for that:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>

<p>Example paragraph.</p>
<p>Example paragraph.</p>
<p>Example paragraph.</p>
```

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

:::

Estilizar um elemento pai com base nos estados de seus filhos era anteriormente desafiador até a introdução da pseudo-classe `:has()`. Ele permite que você aplique estilos a um elemento pai com base na presença ou estado de seus elementos filhos.

Por exemplo, o CSS abaixo será aplicado apenas a qualquer elemento `article` que tenha um `h2` dentro dele:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>
```

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

:::

A pseudo-classe `:not()` é ideal para situações em que você deseja aplicar estilos a um grupo de elementos, excluindo uma ou mais exceções específicas. No CSS abaixo, qualquer botão que não seja um botão primário terá um fundo cinza:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>
```

```css
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}
```

:::

# --questions--

## --text--

Qual pseudo-classe funciona como `:is()`, mas não adiciona nenhuma especificidade aos seus seletores?

## --answers--

`:not()`

### --feedback--

Esta pseudo-classe é ótima para aplicar estilos amplos e não invasivos.

---

`:has()`

### --feedback--

Esta pseudo-classe é ótima para aplicar estilos amplos e não invasivos.

---

`:where()`

---

`:empty`

### --feedback--

Esta pseudo-classe é ótima para aplicar estilos amplos e não invasivos.

## --video-solution--

3

## --text--

Qual destes não é um pseudo-classe funcional?

## --answers--

`:is()`

### --feedback--

Pseudo-classes funcionais usam parênteses e aceitam argumentos dentro deles.

---

`:first-child`

### --feedback--

Pseudo-classes funcionais usam parênteses e aceitam argumentos dentro deles.

---

`:has()`

### --feedback--

Pseudo-classes funcionais usam parênteses e aceitam argumentos dentro deles.

---

`:where()`

### --feedback--

Pseudo-classes funcionais usam parênteses e aceitam argumentos dentro deles.

## --video-solution--

2

## --text--

Qual pseudo-classe é perfeita para uma situação em que você quer aplicar estilos a um grupo de elementos sem uma ou duas exceções?

## --answers--

`:has()`

### --feedback--

Pense em como você pode excluir elementos específicos de serem estilizados.

---

`:is()`

### --feedback--

Pense em como você pode excluir elementos específicos de serem estilizados.

---

`:not()`

---

`:where()`

### --feedback--

Pense em como você pode excluir elementos específicos de serem estilizados.

## --video-solution--

3
