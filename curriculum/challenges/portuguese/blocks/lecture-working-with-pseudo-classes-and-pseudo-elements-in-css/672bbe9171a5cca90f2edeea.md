---
id: 672bbe9171a5cca90f2edeea
title: Quais são exemplos de pseudo-classes de ação do usuário em elementos?
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

O feedback do usuário é um elemento crucial do design web. Por exemplo, é importante que os usuários recebam indicações visuais quando interagem com elementos em um site, como passar o mouse sobre um botão ou clicar em um link. Esse feedback ajuda os usuários a entender o estado dos elementos interativos, como indicar se um link foi visitado ou não.

Pseudo-classes de ação do usuário em CSS são palavras-chave especiais que permitem fornecer esse tipo de feedback sem precisar de JavaScript ou outras linguagens de programação.

Essas pseudo-classes incluem `:hover`, `:active`, `:focus` e `:visited`, entre outras. Eles permitem que você altere a aparência dos elementos com base nas interações do usuário, melhorando a experiência geral do usuário.

Vamos explorar algumas das pseudo-classes de ação do usuário que temos e ver como elas funcionam.

A pseudo-classe `:active` aplica estilos quando um elemento é ativado pelo usuário. Por exemplo, quando o usuário clica em um botão ou em um link, ele fornece um feedback visual imediato, mostrando aos usuários que suas ações estão sendo reconhecidas.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>
```

```css
a:active {
  color: crimson;
}
```

:::

A pseudo-classe `:hover` é acionada quando um usuário passa o mouse ou outro dispositivo apontador sobre um elemento. Desenvolvedores frequentemente o utilizam para criar feedback visual para botões, links ou qualquer elemento que deva responder à atenção do usuário. Aqui está um botão sobre o qual o usuário passaria o mouse antes de clicar:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>
```

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

:::

A pseudo-classe `:focus` aplica estilos quando um elemento ganha foco, tipicamente através da navegação por teclado ou quando um usuário clica em um campo de formulário. Isso não é apenas para feedback mas também crucial para acessibilidade. Ele garante que usuários que dependem fortemente de teclados possam identificar facilmente com qual elemento estão interagindo. 

Aqui está um exemplo de um campo de entrada que ganha foco quando clicado ou acessado via teclado:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
```

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

:::

A pseudo-classe `:visited` seleciona um link que o usuário já visitou. Isso pode ser útil para ajudar os usuários a distinguir entre as páginas que eles já visitaram e as que ainda precisam visitar. Aqui está um exemplo de como alterar a cor do texto do link para ciano quando o link é visitado:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>
```

```css
a:visited {
  color: cyan;
}
```

:::

A pseudo-classe `:checked` no CSS permite que você estilize elementos de formulário como caixas de seleção e botões de rádio quando eles estão selecionados (checked). Esta pseudo-classe é útil para personalizar a aparência desses elementos para melhorar a experiência do usuário, mesmo que os navegadores forneçam estilos padrão para eles.

Aqui está um exemplo com uma caixa de seleção para concordar com os termos em um site. 

**NOTA**: Parte do CSS neste exemplo usa propriedades que ainda não foram abordadas. Isso é apenas para dar uma ideia de como criar uma caixa de seleção personalizada. Você aprenderá como tudo isso funciona em aulas e workshops futuros. 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>
```

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

```

:::

Neste exemplo, estamos usando a propriedade `appearance` definida como `none` para remover a estilização padrão aplicada pelo navegador aos inputs do tipo checkbox. Quando o usuário marcar a caixa, ela terá uma cor de fundo `green`.

Outros exemplos de pseudo-classes de ação são:

- `:focus-within`: para aplicar estilos a um elemento quando ele ou qualquer um de seus descendentes estiver com foco.
- `:enabled`: para direcionar botões de formulário ou outros elementos que estão atualmente habilitados.
- `:disabled`: para direcionar botões de formulário ou outros elementos que estejam desabilitados.
- `:target`: para aplicar estilos a um elemento que é o alvo de um fragmento de URL (a parte de uma URL após o símbolo `#`).

# --questions--

## --text--

O que as pseudo-classes de ação do usuário permitem que você faça?

## --answers--

Eles habilitam animações e transições.

### --feedback--

Pense em como você pode interagir com os usuários puramente com CSS.

---

Eles permitem que você modifique a estrutura do DOM dinamicamente.

### --feedback--

Pense em como você pode interagir com os usuários puramente com CSS.

---

Eles permitem que você forneça feedback ao usuário sem depender de JavaScript.

---

Eles permitem que você estilize o último elemento em uma lista.

### --feedback--

Pense em como você pode interagir com os usuários puramente com CSS.

## --video-solution--

3

## --text--

O que a pseudo-classe `:checked` faz em CSS?

## --answers--

Ele seleciona um elemento quando ele está desabilitado.

### --feedback--

Pense em como os formulários lidam com as seleções do usuário.

---

Ele seleciona um elemento quando ele está sendo hoverado.

### --feedback--

Pense em como os formulários lidam com as seleções do usuário.

---

Ele estiliza elementos como caixas de seleção ou botões de opção que estão marcados.

---

Ele estiliza um elemento quando ele recebe foco.

### --feedback--

Pense em como os formulários lidam com as seleções do usuário.

## --video-solution--

3

## --text--

O que a pseudo-classe `:focus` faz?

## --answers--

Ele seleciona um elemento quando ele é sobrevoado pelo mouse.

### --feedback--

Pense em como os usuários navegam pelos formulários usando um teclado.

---

Aplica estilos quando um elemento recebe foco, geralmente por meio da navegação pelo teclado ou de um clique.

---

Ele seleciona um elemento após um formulário ser enviado.

### --feedback--

Pense em como os usuários navegam pelos formulários usando um teclado.

---

Aplica estilos a um elemento quando ele está desabilitado.

### --feedback--

Pense em como os usuários navegam pelos formulários usando um teclado.

## --video-solution--

2
