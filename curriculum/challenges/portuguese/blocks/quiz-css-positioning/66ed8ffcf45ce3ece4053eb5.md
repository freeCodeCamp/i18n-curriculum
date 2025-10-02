---
id: 66ed8ffcf45ce3ece4053eb5
title: Questionário sobre posicionamento em CSS
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 18 das 20 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual dos seguintes NÃO é um valor válido para a propriedade `position`?

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

Qual é o principal propósito da propriedade `float` no CSS?

#### --distractors--

Floats são usados para remover um elemento do seu fluxo normal na página e posicioná-lo automaticamente no canto superior direito da página da web.

---

Floats são usados para remover um elemento do seu fluxo normal na página e posicioná-lo no topo do seu container.

---

Floats são usados para remover um elemento do seu fluxo normal na página e posicioná-lo automaticamente no canto inferior direito da página da web.

#### --answer--

Floats são usados para remover um elemento do seu fluxo normal na página e posicioná-lo à esquerda ou à direita do seu contêiner.

### --question--

#### --text--

Qual dos seguintes é um exemplo de como fazer um elemento box flutuar para a esquerda?

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

Qual é o papel da propriedade `clear`?

#### --distractors--

É usado para determinar se um elemento precisa ser movido para a parte inferior da página.

---

É usado para determinar se um elemento precisa ser completamente removido da página.

---

É usado para determinar se um elemento precisa ser fixado no topo da página.

#### --answer--

É usado para determinar se um elemento precisa ser movido para baixo do conteúdo flutuante.

### --question--

#### --text--

Qual propriedade CSS é usada para controlar a ordem de empilhamento vertical de elementos posicionados que se sobrepõem na página?

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

Qual das seguintes é a sintaxe correta para posicionamento relativo?

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

Qual propriedade CSS você usaria para fixar um elemento em uma determinada posição na página para que ele não se mova quando a rolagem ocorrer?

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

O que o posicionamento absoluto faz a um elemento?

#### --distractors--

O posicionamento absoluto é usado para determinar se um elemento precisa ser movido para baixo do conteúdo flutuante.

---

O posicionamento absoluto é usado para posicionar o elemento dentro do fluxo normal do documento.

---

O posicionamento absoluto é usado para controlar a ordem de empilhamento vertical de elementos posicionados que se sobrepõem na página.

#### --answer--

O posicionamento absoluto permite que você retire um elemento do fluxo normal do documento, fazendo com que ele se comporte de forma independente dos outros elementos.

### --question--

#### --text--

Qual das seguintes NÃO é uma propriedade válida que você pode usar para posicionamento absoluto?

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

Qual é a principal diferença entre posicionamento relativo e absoluto?

#### --distractors--

O posicionamento absoluto define o elemento em uma posição fixa enquanto o posicionamento relativo tira um elemento do fluxo normal do documento.

---

O posicionamento relativo define o elemento em uma posição fixa enquanto o posicionamento absoluto tira um elemento do fluxo normal do documento.

---

O posicionamento absoluto posiciona o elemento dentro do fluxo normal do documento enquanto o posicionamento relativo tira um elemento do fluxo normal do documento.

#### --answer--

O posicionamento relativo posiciona o elemento dentro do fluxo normal do documento enquanto o posicionamento absoluto retira um elemento do fluxo normal do documento.

### --question--

#### --text--

Qual dos seguintes é um exemplo de posicionar uma caixa no canto superior esquerdo da página?

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

Qual método de posicionamento permite que um elemento fique fixo em uma posição definida somente quando você rola além de um determinado ponto?

#### --distractors--

Posicionamento de float.

---

Posicionamento fixo.

---

Posicionamento absoluto.

#### --answer--

Posicionamento sticky.

### --question--

#### --text--

Qual dos seguintes é um exemplo correto de uso de posicionamento sticky?

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

Qual é a diferença entre posicionamento sticky e fixed?

#### --distractors--

Elementos sticky só podem ser usados em layouts de tabela enquanto elementos fixed podem ser usados em qualquer tipo de layout CSS.

---

Elementos sticky sempre permanecerão na mesma posição enquanto elementos fixed irão se fixar em um determinado ponto e depois se comportarão como elementos relative.

---

Elementos fixos serão posicionados em relação à sua posição normal enquanto elementos sticky irão apenas fixar em um determinado ponto e depois se comportarão como elementos relativos.

#### --answer--

Elementos fixos permanecerão na mesma posição na tela enquanto elementos sticky só ficarão fixos até um certo ponto e depois se comportarão como elementos relativos.

### --question--

#### --text--

Qual problema o hack `clearfix` resolveu ao trabalhar com floats?

#### --distractors--

O hack `clearfix` ajudou a resolver o problema dos elementos flutuantes sendo removidos do fluxo normal do documento e sendo posicionados em uma posição fixa na página.

---

O hack `clearfix` ajudou a resolver o problema dos elementos flutuantes que não eram responsivos em layouts para dispositivos móveis e tablets.

---

O hack `clearfix` ajudou a resolver o problema dos elementos flutuantes desaparecendo da página.

#### --answer--

O hack `clearfix` ajudou a resolver o problema de sobreposições e colapsos nos layouts quando múltiplos elementos flutuantes eram empilhados lado a lado.

### --question--

#### --text--

Qual dos seguintes é um exemplo correto para usar o hack `clearfix`?

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

O que é posicionamento estático?

#### --distractors--

Isso é usado para remover um elemento do seu fluxo normal na página e posicioná-lo automaticamente no canto superior direito da página da web.

---

Isso permite que você retire um elemento do fluxo normal do documento, fazendo com que ele se comporte de forma independente dos outros elementos.

---

Isso permite que um elemento fique fixo em uma posição definida somente quando você rolar além de um determinado ponto.

#### --answer--

Este é o fluxo normal para o documento.Os elementos são posicionados de cima para baixo e da esquerda para a direita um após o outro.

### --question--

#### --text--

Qual dos seguintes é um exemplo de definir a navbar no topo da página usando posicionamento fixo?

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

Qual dos seguintes é um valor válido para usar na propriedade `z-index`?

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

Qual dos seguintes é o valor padrão da propriedade `position`?

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

Qual valor de `position` permite ajustar a posição de um elemento com `top` e `left` mantendo-o dentro do fluxo normal do documento?

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

Como um elemento com `position: sticky;` se comporta inicialmente?

#### --distractors--

Ele se comporta como um elemento `fixed` até que uma posição de rolagem seja alcançada.

---

Ele é sempre removido do fluxo normal do documento.

---

Ele se comporta como um elemento `absolute` dentro do seu pai.

#### --answer--

Ele se comporta como um elemento `relative` até que uma posição de rolagem especificada seja atingida.

### --question--

#### --text--

Qual das opções a seguir demonstra um uso válido e eficaz da propriedade `z-index` para fazer com que `.box-two` apareça acima de `.box-one`?

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

Para que serve a propriedade `z-index` no CSS?

#### --distractors--

Define o nível de zoom da página.

---

Ele controla o alinhamento horizontal dos elementos dentro de um contêiner flexível.

---

Define o espaçamento entre o conteúdo de um elemento e sua borda.

#### --answer--

Ele controla a ordem de empilhamento vertical dos elementos posicionados que se sobrepõem.

### --question--

#### --text--

Quando você aplica `top: 10%;` a um elemento com `position: fixed;`, em relação a que é calculado o `10%`?

#### --distractors--

A altura do próprio elemento.

---

A altura do seu contêiner pai.

---

A largura da viewport.

#### --answer--

A altura da viewport.

### --question--

#### --text--

Qual dos exemplos de código é um uso correto da propriedade `z-index` para colocar uma sobreposição acima de outro conteúdo?

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

Qual propriedade CSS é usada para controlar se um elemento deve ser movido para baixo dos elementos flutuantes?

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

Como um elemento com `position: relative;` e `bottom: 25px;` será movido?

#### --distractors--

Ele se moverá 25px para baixo de sua posição normal.

---

Ele se moverá 25px para a direita da sua posição normal.

---

Ele será posicionado a 25px da parte inferior da viewport.

#### --answer--

Ele se moverá 25px para cima de sua posição normal.

### --question--

#### --text--

A propriedade `z-index` afetará apenas elementos que tenham qual propriedade CSS aplicada?

#### --distractors--

Um valor `float` diferente de `none`.

---

Um valor `display` de `inline-block`.

---

Um conjunto de `background-color`.

#### --answer--

Um valor de `position` diferente de `static`.

### --question--

#### --text--

Qual seria o efeito de aplicar `float: right;` a um logo em um cabeçalho?

#### --distractors--

O logo seria alinhado à direita, mas permaneceria no fluxo normal do documento, impedindo que outro conteúdo fizesse wrap.

---

O logo seria retirado do fluxo e posicionado no lado direito de toda a viewport do navegador, não do seu contêiner.

---

O logo se tornaria um elemento de nível de bloco que ocupa toda a largura do cabeçalho, empurrando outros elementos para baixo.

#### --answer--

O logo seria removido do seu fluxo normal e colocado no lado direito do seu container, com outro conteúdo envolvendo-o.

### --question--

#### --text--

Qual trecho de CSS manterá um elemento fixo no topo da janela de visualização assim que for rolado até lá?

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

Qual é o propósito específico de `clear: both;` no CSS?

#### --distractors--

Ele cancela a propriedade `float` no próprio elemento, retornando-o ao fluxo normal do documento.

---

Remove quaisquer propriedades `clear` que foram herdadas de um elemento pai, restaurando o comportamento padrão de flutuação.

---

Ele limpa apenas os elementos flutuantes que estão do lado direito, permitindo que os elementos flutuantes à esquerda permaneçam como estão.

#### --answer--

Ele garante que o elemento seja movido para baixo de quaisquer elementos flutuantes que apareçam antes dele tanto no lado esquerdo e no lado direito.

### --question--

#### --text--

Dado o seguinte código, como `.child` será posicionado?

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

Ele será posicionado a 10px do topo do elemento `.parent`, pois o posicionamento `absolute` é sempre relativo ao pai direto.

---

Permanecerá em sua posição estática padrão porque o valor `absolute` é inválido sem uma propriedade `z-index`.

---

Ele será posicionado a 10px do topo da janela do navegador, permanecendo fixo no lugar mesmo quando o usuário rolar a página.

#### --answer--

Ele será posicionado a 10px do topo do bloco de contêiner inicial, como o `<body>`, porque seu elemento pai não está posicionado.

### --question--

#### --text--

Qual efeito o seguinte CSS terá no elemento `.box`?

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

O elemento permanecerá em seu fluxo normal, mas será indentado em 50px a partir do topo e da esquerda, afastando outros elementos.

---

O elemento ficará fixo na viewport e permanecerá a 50px do topo e a 50px da esquerda, mesmo quando a página for rolada.

---

O elemento será posicionado em relação ao seu próprio ponto de partida, movendo-se 50px para baixo e 50px para a direita sem sair do fluxo do documento.

#### --answer--

O elemento será retirado do fluxo normal e posicionado a 50px do topo e a 50px da esquerda de seu ancestral posicionado mais próximo.

### --question--

#### --text--

Qual dos seguintes valores de `position` remove um elemento completamente do fluxo normal do documento?

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

Dado um elemento `.parent` e um `.child`, qual trecho de CSS posicionará corretamente o `.child` a 20px do canto superior esquerdo do elemento `.parent`?

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

Qual é a diferença entre o posicionamento `static` e `relative`?

#### --distractors--

O posicionamento `static` remove um elemento do fluxo do documento, enquanto o posicionamento `relative` o mantém no fluxo.

---

Um elemento com `position: static;` pode ser deslocado com as propriedades `top` e `left`, enquanto `position: relative;` não pode.

---

O posicionamento `static` é para elementos de nível de bloco, enquanto o posicionamento `relative` é destinado apenas para elementos inline.

#### --answer--

Ambos mantêm um elemento no fluxo normal do documento, mas `relative` permite que o elemento seja deslocado de sua posição original.

### --question--

#### --text--

Qual trecho de CSS posiciona corretamente uma imagem à esquerda, permitindo que outro conteúdo envolva-a?

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

Qual é a diferença entre posicionamento `absolute` e `fixed`?

#### --distractors--

O posicionamento `absolute` é relativo à viewport, enquanto o posicionamento `fixed` é relativo ao ancestral posicionado mais próximo.

---

O posicionamento `absolute` mantém o elemento no fluxo normal do documento, enquanto o posicionamento `fixed` o remove do fluxo.

---

Ambos são posicionados em relação à viewport, mas elementos `fixed` irão rolar com a página enquanto elementos `absolute` não irão.

#### --answer--

O posicionamento `absolute` é relativo ao ancestral posicionado mais próximo, enquanto o posicionamento `fixed` é relativo à janela de visualização do navegador.

### --question--

#### --text--

Qual valor de `position` coloca um elemento no fluxo normal do documento e impede que propriedades de deslocamento como `top` e `left` tenham qualquer efeito?

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`

