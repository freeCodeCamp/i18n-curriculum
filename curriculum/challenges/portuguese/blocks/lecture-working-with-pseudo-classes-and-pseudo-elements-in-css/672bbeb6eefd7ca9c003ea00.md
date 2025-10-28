---
id: 672bbeb6eefd7ca9c003ea00
title: Quais são exemplos de pseudo-classes estruturais em árvore?
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

Pseudo-classes estruturais em árvore permitem que você selecione e estilize elementos com base em sua posição dentro da árvore do documento. A árvore do documento refere-se à estrutura hierárquica dos elementos em um documento HTML.

Aqui está uma lista de pseudo-classes estruturais em árvore:

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

Vamos dar uma olhada mais detalhada em cada uma das pseudo-classes estruturais de árvore, acompanhadas por exemplos.

A pseudo-classe `:root` é geralmente o elemento raiz `html`. Ele ajuda você a direcionar o nível mais alto no documento para que possa aplicar um estilo comum a todo o documento.     

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

A pseudo-classe `:root` também é comumente usada para definir variáveis CSS:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

Com variáveis CSS, você pode armazenar valores e reutilizá-los na sua folha de estilos. Você aprenderá mais sobre estes mais adiante.

Elementos vazios, ou seja, elementos sem filhos além de espaços em branco, também estão incluídos na árvore do documento. É por isso que existe a pseudo-classe `:empty` para direcionar elementos vazios.  For example, this HTML code has two empty list items. Com a pseudo-classe `:empty`, você pode estilizar os itens de lista vazios de forma diferente:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

A coisa mais prática a fazer com os itens da lista vazia provavelmente é não exibi-los de forma alguma:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` permite que você selecione elementos com base na sua posição dentro de um pai, enquanto `:nth-last-child(n)` permite que você selecione elementos contando a partir do final. O `n` pode ser um número específico ou uma palavra-chave como `odd` ou `even`. Isto é incrivelmente útil para estilizar células de tabela com base na posição: even e odd.

Aqui está um exemplo em HTML de uma tabela de lista de preços de frutas. O CSS está usando a pseudo-classe `:nth-child` para direcionar as células da tabela com base nas posições ímpares e pares:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

As pseudo-classes `:first-child`, `:last-child` e `:only-child` atuam em itens dentro de um contêiner pai ou no documento inteiro.

- `:first-child` seleciona o primeiro elemento em um elemento pai ou no documento.
- `:last-child` seleciona o último elemento em um elemento pai ou no documento.
- `:only-child` seleciona o único elemento em um elemento pai ou no documento.

Usar as pseudo-classes `:first-child` e `:last-child` selecionará tanto `Item 1` e `Item 3` neste exemplo:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

Se você tiver mais listas não ordenadas na página, precisa ser mais específico com a seleção: 

Para mostrar como a pseudo-classe `:only-child` funciona, aqui está um exemplo em HTML com dois elementos `div` separados. Usar a pseudo-classe `:only-child` garante que apenas o elemento `div` com um único filho seja selecionado:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

As pseudo-classes `:first-of-type` e `:last-of-type` selecionam a primeira e a última ocorrência de um tipo específico de elemento dentro do seu elemento pai. Eles são úteis para aplicar estilos únicos à primeira ou última instância desse tipo de elemento entre seus irmãos.

No exemplo abaixo, `:first-of-type` e `:last-of-type` se aplicam ao primeiro elemento e ao último elemento dentro do elemento `section`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` permite que você selecione um elemento específico dentro de seu pai com base em sua posição entre irmãos do mesmo tipo. Por exemplo, no HTML abaixo, `:nth-of-type(2)` seleciona o segundo elemento no contêiner:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` seleciona um elemento se ele for o único do seu tipo dentro do seu pai. Isso pode ser útil para enfatizar itens únicos ou garantir que eles sejam estilizados de forma diferente quando não fazem parte de um grupo.

No exemplo abaixo, há dois elementos `div` sendo que um deles possui um único elemento. O CSS se aplica apenas ao primeiro container:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

Qual é a diferença entre as pseudo-classes `:first-of-type` e `:last-of-type`?

## --answers--

`:first-of-type` seleciona o primeiro elemento de um tipo específico dentro do seu pai, enquanto `:last-of-type` seleciona o último elemento de um tipo diferente.

### --feedback--

Considere como essas pseudo-classes ajudam você a estilizar as primeiras e últimas instâncias de uma tag específica, como `p` ou `h1`.

---

`:first-of-type` e `:last-of-type` ambos selecionam a primeira ocorrência de um elemento mas em seções diferentes do documento.

### --feedback--

Considere como essas pseudo-classes ajudam você a estilizar as primeiras e últimas instâncias de uma tag específica, como `p` ou `h1`.

---

`:first-of-type` seleciona a primeira ocorrência de um tipo específico de elemento dentro do seu pai, enquanto `:last-of-type` seleciona a última ocorrência desse mesmo tipo de elemento dentro do seu pai.

---

`:last-of-type` aplica estilos ao primeiro e último elemento dentro do documento, enquanto `:last-of-type` aplica estilos a todos os elementos de um tipo específico.

### --feedback--

Considere como essas pseudo-classes ajudam você a estilizar as primeiras e últimas instâncias de uma tag específica, como `p` ou `h1`.

## --video-solution--

3

## --text--

Qual é a diferença entre as pseudo-classes `:first-child` e `:last-child`?

## --answers--

`:first-child` seleciona o primeiro elemento dentro do seu pai, enquanto `:last-child` seleciona o último elemento dentro de um pai diferente.

### --feedback--

Pense em como as duas pseudo-classes ajudam você a estilizar o primeiro e o último elementos dentro do mesmo contêiner pai.

---

`:first-child` seleciona o primeiro elemento dentro do seu pai, enquanto `:last-child` seleciona o último elemento dentro do mesmo pai.

---

`:first-child` seleciona o primeiro elemento de um tipo específico dentro de seu pai, enquanto `:last-child` seleciona o último elemento de um tipo diferente dentro de seu pai.

### --feedback--

Pense em como as duas pseudo-classes ajudam você a estilizar o primeiro e o último elementos dentro do mesmo contêiner pai.

---

`:first-child` seleciona o primeiro e o último elemento dentro de um pai, enquanto `:last-child` seleciona todos os outros elementos.

### --feedback--

Pense em como as duas pseudo-classes ajudam você a estilizar o primeiro e o último elementos dentro do mesmo contêiner pai.

## --video-solution--

2

## --text--

Qual pseudo-classe permite que você selecione elementos que não têm filhos, incluindo aqueles que contêm apenas espaços em branco?

## --answers--

`:empty`

---

`:first-child`

### --feedback--

Pense em como você pode estilizar elementos que não têm conteúdo.

---

`:last-child`

### --feedback--

Pense em como você pode estilizar elementos que não têm conteúdo.

---

`:only-of-type`

### --feedback--

Pense em como você pode estilizar elementos que não têm conteúdo.

## --video-solution--

1
