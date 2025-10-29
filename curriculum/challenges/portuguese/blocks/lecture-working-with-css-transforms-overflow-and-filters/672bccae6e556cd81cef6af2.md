---
id: 672bccae6e556cd81cef6af2
title: O que é Margin Collapsing e como ele funciona?
challengeType: 19
dashedName: what-is-margin-collapsing
---

# --interactive--

O colapso de margem é um conceito fundamental em CSS que frequentemente confunde iniciantes em desenvolvimento web.

Esse comportamento ocorre quando as margens verticais de elementos adjacentes se sobrepõem, resultando em uma única margem igual à maior das duas.

Entender o colapso de margem é importante para o controle preciso do espaçamento e do layout no design web. Então, vamos entender como o margin collapsing funciona e explorar alguns cenários comuns onde ele ocorre.

No CSS, quando duas margens verticais entram em contato uma com a outra, elas colapsam, isso significa que em vez de se somarem, a margem maior prevalece e determina o espaço entre os elementos. Esse comportamento se aplica apenas às margens verticais superior e inferior e não às margens horizontais, nem à esquerda e à direita. Então, aqui está um exemplo para ilustrar este conceito:

:::interactive_editor

```html
<style>
  .box1 {
    margin-bottom: 20px;
    background-color: lightblue;
  }
  .box2 {
    margin-top: 30px;
    background-color: lightgreen;
  }
</style>

<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

:::

Neste exemplo, você pode esperar que o espaço total entre `.box1` e `.box2` seja 50 pixels (20 pixels mais 30 pixels). No entanto, devido ao colapso de margem o espaço real será de 30 pixels, que é a maior das duas margens.

Como vimos nos exemplos anteriores, as margens dos elementos irmãos adjacentes irão colapsar. Este é o caso mais simples de colapso de margem. Vamos explorar mais casos onde o colapso de margem pode ocorrer. 

As margens também podem colapsar entre um elemento pai e seu primeiro ou último filho. Se não houver borda, padding, conteúdo inline ou espaçamento para separar a margem do pai da do filho, elas irão colapsar.

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

Neste caso, você pode esperar que o filho esteja a 70 pixels do topo (40 pixels mais 30 pixels). No entanto, as margens colapsam e a margem maior de 40 pixels é usada.

Se um elemento não tiver conteúdo, padding ou borda, suas margens superior e inferior podem se fundir em uma única margem. 

:::interactive_editor

```html
<style>
  .empty-block {
    margin-top: 20px;
    margin-bottom: 10px;
    height: 0;
  }
  .next-block {
    background-color: lightgray;
  }
</style>

<div class="empty-block"></div>
<div class="next-block">Next block</div>
```

:::

Neste exemplo, as margens superior e inferior do `empty-block` colapsam em uma única margem de 30 pixels, a maior das duas.

Aqui está outro exemplo de como evitar colapso usando padding: 

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    padding-top: 1px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

Neste caso, o padding de um pixel no elemento pai impede o colapso da margem, resultando em um espaço total de 71 pixels do topo do pai até o topo do conteúdo filho.

Entender o colapso de margem é importante para o controle preciso do layout e do espaçamento em CSS. Embora às vezes possa levar a resultados inesperados, é um recurso projetado para criar espaçamento mais estético e consistente em documentos. Ao saber quando ocorre o colapso de margem e como evitá-lo quando necessário, você pode criar layouts mais previsíveis e fáceis de manter em seus designs web.

# --questions--

## --text--

Em qual direção ocorre o colapso de margin?

## --answers--

Margens horizontais apenas.

### --feedback--

Pense em quais margens (topo, base, esquerda, direita) são afetadas por esse comportamento.

---

Margens verticais apenas.

---

Margens horizontais e verticais.

### --feedback--

Pense em quais margens (topo, base, esquerda, direita) são afetadas por esse comportamento.

---

Margens diagonais.

### --feedback--

Pense em quais margens (topo, base, esquerda, direita) são afetadas por esse comportamento.

## --video-solution--

2

## --text--

O que acontece quando dois elementos adjacentes têm valores de margem diferentes?

## --answers--

As margens somam.

### --feedback--

Considere qual margem "vence" quando ocorre o colapso.

---

A margem menor é usada.

### --feedback--

Considere qual margem "vence" quando ocorre o colapso.

---

A margem maior é usada.

---

A média das duas margens é usada.

### --feedback--

Considere qual margem "vence" quando ocorre o colapso.

## --video-solution--

3

## --text--

Qual dos seguintes NÃO impedirá o colapso de margem entre um elemento pai e seu primeiro filho?

## --answers--

Adicionando uma `border` ao elemento pai.

### --feedback--

Pense em quais propriedades criam uma separação entre as margens do pai e do filho.

---

Definindo `padding-top: 1px;` no elemento pai.

### --feedback--

Pense em quais propriedades criam uma separação entre as margens do pai e do filho.

---

Usando `display: inline-block;` no elemento filho.

### --feedback--

Pense em quais propriedades criam uma separação entre as margens do pai e do filho.

---

Definindo `margin-top: 0;` no elemento filho.

## --video-solution--

4
