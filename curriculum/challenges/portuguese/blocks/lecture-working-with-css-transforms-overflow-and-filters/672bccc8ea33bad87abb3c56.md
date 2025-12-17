---
id: 672bccc8ea33bad87abb3c56
title: Qual é a diferença entre content-box e border-box?
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

A propriedade `box-sizing` pode ser definida como `content-box` ou `border-box` para controlar como a largura e a altura dos elementos são calculadas.

Esta propriedade pode ser definida no seletor universal (`*`) para aplicar a todos os elementos do documento:

```css
* {
  box-sizing: border-box;
}
```

O valor da propriedade `box-sizing` é `content-box` por padrão, mas você pode escolher `border-box` se precisar. Exploraremos primeiro `content-box` e depois entraremos em `border-box`.

Para entender como os modelos funcionam, você precisa estar familiarizado com os quatro conceitos principais do modelo de caixa CSS. Vamos revisá-los rapidamente.

- A área de conteúdo é o espaço ocupado pelo conteúdo do elemento.
- O padding é o espaço entre a área de conteúdo e a borda.
- A borda é o contorno que envolve a área de conteúdo e o padding.
- A margem é o espaço fora da borda que separa o elemento de outros elementos.

No modelo `content-box`, a largura e a altura que você define para um elemento determinam as dimensões da área de conteúdo, mas não incluem o padding, border ou margin. Use `content-box` quando precisar de controle preciso sobre a área de conteúdo. Quando você define `width` e `height`, está definindo apenas o tamanho do próprio conteúdo.

Para encontrar a largura total do elemento, você precisará adicionar o padding esquerdo e direito e as bordas esquerda e direita. Da mesma forma, a altura total de um elemento pode ser encontrada adicionando a altura do conteúdo, o padding superior e inferior e as bordas superior e inferior.

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

Neste caso, se `content-box` for usado a área de conteúdo será 300px por 200px. O tamanho total renderizado inclui padding e bordas — por exemplo, largura total = 300px (conteúdo) + 40px (padding) + 8px (bordas) = 348px; a altura total é calculada da mesma forma.

Ótimo! Agora vamos explorar `border-box`.  It's different because the width and height you set include the element's content, padding, and border (but not its margin).  Use `border-box` when you want the element's total size to stay fixed even if padding or borders change — that's often helpful in responsive layouts.

Com `border-box`, o padding e as bordas são incluídos dentro do tamanho especificado do elemento. O `width` e o `height` que você define se tornam as dimensões totais do elemento: conteúdo + padding + borda; as margens permanecem excluídas.

No exemplo a seguir, há dois elementos `div` com as mesmas dimensões mas valores diferentes de `box-sizing`. Observe como isso resulta em tamanhos totais diferentes quando visualizados no navegador:

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

Você pode ver que ambos têm o mesmo `width`, `height`, `padding`, `border` e `margin`.  The only differences are in the colors and the value of the `box-sizing` property. Essa pequena diferença tem um impacto muito importante nas dimensões finais. 

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
