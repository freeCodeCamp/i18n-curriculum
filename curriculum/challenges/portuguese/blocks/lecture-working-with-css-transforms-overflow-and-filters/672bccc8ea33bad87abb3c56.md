---
id: 672bccc8ea33bad87abb3c56
title: Qual é a diferença entre content-box e border-box?
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

A propriedade `box-sizing` pode ser definida como `content-box` ou `border-box` para controlar como a largura e a altura dos elementos são calculadas. Aqui você pode ver a propriedade `box-sizing` e os dois valores possíveis: 

```css
box-sizing: content-box;
```

```css
box-sizing: border-box;
```

Esta propriedade pode ser definida no seletor universal (`*`) para aplicar a todos os elementos do documento:

```css
* {
  box-sizing: border-box;
}
```

O valor da propriedade `box-sizing` é `content-box` por padrão, mas você pode escolher `border-box` se precisar. Exploraremos primeiro `content-box` e depois entraremos em `border-box`.

Para entender como esses modelos funcionam, você precisa estar familiarizado com os quatro conceitos principais do modelo de caixa do CSS. Vamos revisá-los rapidamente. A área de conteúdo é o espaço ocupado pelo conteúdo do elemento. O padding é o espaço entre a área de conteúdo e a borda. A borda é o contorno que envolve a área de conteúdo e o padding. A margem é o espaço fora da borda que separa o elemento de outros elementos.

No modelo `content-box`, a largura e a altura que você define para um elemento determinam as dimensões da área de conteúdo mas não incluem o padding, border ou margin. Você deve usar `content-box` quando precisar ter controle preciso sobre as dimensões da área de conteúdo. Então, quando você define a largura e a altura de um elemento com as propriedades `width` e `height`, você está definindo apenas as dimensões da área de conteúdo. `width` é a largura do conteúdo, `height` é a altura do conteúdo. 

Para encontrar a largura total do elemento, o que você realmente verá na tela, você ainda precisará adicionar o padding esquerdo e direito e as bordas esquerda e direita. Então, a largura total é igual à largura total mais o padding left, mais o padding right, mais o border left, mais o border right. 

Da mesma forma, a altura total de um elemento pode ser encontrada somando a altura do conteúdo, o padding da borda superior e inferior e as bordas superior e inferior. Então, a altura total é igual à altura do conteúdo mais o padding top, mais o padding bottom, mais o border top, mais o border bottom. 

Por exemplo, aqui temos um seletor de tipo CSS para todos os elementos `div`. 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

Neste caso, se `content-box` for usado a área de conteúdo terá uma largura de 300 pixels e uma altura de 200 pixels. No entanto, a largura total, o que você verá na tela, será o resultado da soma da largura da área de conteúdo, que é 300 pixels, mais o padding em ambos os lados (40 pixels) e as bordas em ambos os lados (8 pixels). 

Da mesma forma, a altura total será o resultado da soma da altura da área de conteúdo (200 pixels), mais o padding superior e inferior (40 pixels), mais as bordas superior e inferior (8 pixels).

Ótimo! Agora vamos explorar `border-box`. Eles são um pouco diferentes, com `border-box` a largura e a altura de um elemento incluem a área de conteúdo, o padding e a borda, mas não incluem a margem. Você deve usar `border-box` quando precisar manter um tamanho fixo do elemento independentemente das mudanças em padding ou bordas. Também é útil para design web responsivo, já que a área de conteúdo se ajustará automaticamente para caber nas dimensões.

O padding e a borda estão dentro da caixa, então quando você define as propriedades `width` e `height` de um elemento, você está realmente definindo a largura e a altura da parte interna da caixa. Aqui está nosso exemplo de `div` com as mesmas propriedades e valores que tínhamos antes: 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

Com `border-box` o valor da propriedade `width` será o resultado da soma da largura da área de conteúdo, do padding esquerdo e direito e da borda esquerda e direita. Então, a largura é igual à largura do conteúdo, mais o padding esquerdo, mais o padding direito, mais a borda esquerda, mais a borda direita.

Da mesma forma, o valor da propriedade `height` é o resultado da soma da altura da área de conteúdo, do padding superior e inferior e da borda superior e inferior. A altura é igual à altura do conteúdo, mais o padding superior, mais o padding inferior, mais a borda superior, mais a borda inferior. A margem não está incluída na largura ou altura.

Se você verificar o tamanho do `div` no navegador usando o `content-box` e o `border-box` você notará que há uma diferença muito importante. Aqui estão dois elementos `div` cada um com as mesmas dimensões mas valores diferentes de `box-sizing`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

Você pode ver que ambos têm o mesmo `width`, `height`, `padding`, `border` e `margin`. As únicas diferenças são as cores e o valor da propriedade `box-sizing`. Essa pequena diferença tem um impacto muito importante nas dimensões finais. 

Escolher entre `content-box` e `border-box` realmente depende das necessidades específicas do seu projeto. Embora `border-box` esteja se tornando cada vez mais popular por sua simplicidade e flexibilidade, entender ambos os modelos é importante para implementar layouts CSS eficazes.

# --questions--

## --text--

Qual dos seguintes é o valor padrão para a propriedade `box-sizing` na maioria dos navegadores?

## --answers--

`content-box`

---

`border-box`

### --feedback--

Pense no comportamento padrão para dimensionamento de elementos.

---

`padding-box`

### --feedback--

Pense no comportamento padrão para dimensionamento de elementos.

---

`margin-box`

### --feedback--

Pense no comportamento padrão para dimensionamento de elementos.

## --video-solution--

1

## --text--

Qual é a principal vantagem de usar `border-box` para criar layouts responsivos?

## --answers--

Isso torna os cálculos mais complicados.

### --feedback--

Pense em como o modelo `border-box` lida com `padding` e `border` dentro da `width` e `height` especificadas.

---

Ele permite um controle mais preciso sobre as dimensões do elemento.

### --feedback--

Pense em como o modelo `border-box` lida com `padding` e `border` dentro da `width` e `height` especificadas.

---

Ele garante que os elementos mantenham suas dimensões especificadas independentemente das alterações em `padding` ou `border`.

---

Ele melhora a compatibilidade do navegador.

### --feedback--

Pense em como o modelo `border-box` lida com `padding` e `border` dentro da `width` e `height` especificadas.

## --video-solution--

3

## --text--

No modelo `content-box`, o que o `width` especificado de um elemento representa?

## --answers--

A `width` total do elemento, incluindo `padding`, `border` e `margin`.

### --feedback--

Pense na relação entre a área de conteúdo e as dimensões gerais do elemento no modelo `content-box`.

---

A `width` da área de conteúdo somente.

---

A `width` da `border`.

### --feedback--

Pense na relação entre a área de conteúdo e as dimensões gerais do elemento no modelo `content-box`.

---

A `width` do `padding`.

### --feedback--

Pense na relação entre a área de conteúdo e as dimensões gerais do elemento no modelo `content-box`.

## --video-solution--

2
