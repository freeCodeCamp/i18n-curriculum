---
id: 672bbeaa5afdc5a98d5ab8ff
title: Quais são exemplos de pseudo-classes de localização?
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

Pseudo-classes de localização são usadas para estilizar links e elementos que são alvo dentro do documento atual. Eles oferecem uma maneira de aplicar estilos com base em se um link foi visitado ou se um elemento está atualmente em foco.

Exemplos de pseudo-classes de localização são:

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`
- `:target-within`

Vamos analisar mais profundamente cada uma dessas pseudo-classes.

A pseudo-classe `:link` permite que você selecione todos os links não visitados em uma página da web. Você pode usá-lo para estilizar links de forma diferente antes que o usuário clique neles. Por exemplo, você pode querer deixar todos os links não visitados azuis ou na cor primária do seu site:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:link {
  color: magenta;
}
```

:::

Neste caso, qualquer link que o usuário ainda não tenha clicado aparecerá magenta. Uma vez que o usuário clica no link, o estilo `:link` não se aplica mais e a pseudo-classe `:visited` assume. A pseudo-classe `:visited` entra em ação depois que o usuário clica no link, então você pode usá-la para direcionar links que o usuário já clicou. 

Aqui está um exemplo de como alterar o estado do link visitado para a cor `purple`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:visited {
  color: purple;
}
```

:::

A pseudo-classe `:visited` ajuda os usuários a distinguir entre links que eles visitaram e os que não visitaram.

A pseudo-classe `:any-link` é uma combinação das pseudo-classes `:link` e `:visited`. Para que corresponda a qualquer elemento anchor com um atributo `href`, independentemente de ter sido visitado ou não.

Aqui está um exemplo de como alterar a cor do link para a pseudo-classe `:any-link` para `crimson`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:any-link {
  color: crimson;
}
```

:::

A pseudo-classe `:local-link` seleciona links que apontam para o mesmo documento. Pode ser útil quando você quer diferenciar links internos de externos. Atualmente, nenhum navegador suporta a pseudo-classe `:local-link`.

A pseudo-classe `:target` seleciona um elemento que corresponde ao identificador de fragmento da URL atual, por exemplo, `#section1`. É muito útil para páginas com navegação interna.

Aqui está um exemplo de HTML que representa uma navegação dentro da página. O CSS usa a pseudo-classe `:target` para estilizar a seção que corresponde ao local para onde o usuário navega:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
```

```css
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}
```

:::

Quando o usuário clicar em um dos links de navegação, a cor de fundo daquela respectiva seção mudará para verde.

# --questions--

## --text--

Qual pseudo-classe permite que você estilize um elemento que corresponde ao identificador de fragmento da URL atual, como `#section1`?

## --answers--

`:hover`

### --feedback--

Pense em como você pode destacar uma seção específica ao navegar por links dentro da página.

---

`:focus`

### --feedback--

Pense em como você pode destacar uma seção específica ao navegar por links dentro da página.

---

`:target`

---

`:checked`

### --feedback--

Pense em como você pode destacar uma seção específica ao navegar por links dentro da página.

## --video-solution--

3

## --text--

Quando as pseudo-classes de localização são particularmente úteis?

## --answers--

Ao estilizar elementos com base em suas relações de irmãos.

### --feedback--

Pense em como você pode estilizar links e elementos alvo dependendo da interação do usuário.

---

Ao aplicar estilos com base em se um link foi visitado ou se um elemento está atualmente em foco.

---

Ao estilizar elementos com base nos atributos do elemento pai.

### --feedback--

Pense em como você pode estilizar links e elementos alvo dependendo da interação do usuário.

---

Ao ajustar o layout de uma página da web dinamicamente.

### --feedback--

Pense em como você pode estilizar links e elementos alvo dependendo da interação do usuário.

## --video-solution--

2

## --text--

Qual pseudo-classe foi criada para selecionar links que apontam para o mesmo documento mas que atualmente não é suportada por nenhum navegador?

## --answers--

`:any-link`

### --feedback--

Considere a pseudo-classe destinada a distinguir links internos de externos, embora ainda não seja suportada.

---

`:local-link`

---

`:visited`

### --feedback--

Considere a pseudo-classe destinada a distinguir links internos de externos, embora ainda não seja suportada.

---

`:target`

### --feedback--

Considere a pseudo-classe destinada a distinguir links internos de externos, embora ainda não seja suportada.

## --video-solution--

2
