---
id: 66ed8fedf45ce3ece4053eb3
title: Questionário de grid no CSS
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 18 das 20 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

O que é CSS Grid?

#### --distractors--

Um método usado para exibir tabelas em um site.

---

Um método usado para mosaicar imagens.

---

Uma forma de exibir contornos ao redor dos elementos HTML.

#### --answer--

Um layout bidimensional para documentos HTML.

### --question--

#### --text--

Qual das seguintes é a maneira correta de criar um grid container?

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

O que a propriedade `grid-template-columns` faz?

#### --distractors--

Define duas colunas e três linhas para um contêiner de grid.

---

Define todas as colunas do layout da grade para um comprimento fixo.

---

Cria um contêiner de layout em grade com duas colunas.

#### --answer--

Define o número de colunas em um layout de grade.

### --question--

#### --text--

O que a propriedade `grid-template-rows` faz?

#### --distractors--

Especifica o tamanho e a localização de um item da grade em um layout de grade.

---

Cria um template para criar novas linhas de grade.

---

Especifica um tamanho padrão de linha no contêiner da grade.

#### --answer--

Especifica o número e a altura de cada linha em um layout de grade.

### --question--

#### --text--

O que a função `minmax()` faz?

#### --distractors--

Alterna entre o primeiro e o segundo valor, dependendo do espaço disponível.

---

Retorna a média das duas entradas.

---

Define o tamanho mínimo do elemento para o navegador funcionando em modo de tela cheia.

#### --answer--

Define os tamanhos mínimo e máximo para uma track.

### --question--

#### --text--

Qual é a forma abreviada para as propriedades `column-gap` e `row-gap`?

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-gap`

#### --answer--

`gap`

### --question--

#### --text--

Qual é a diferença entre uma grade implícita e explícita?

#### --distractors--

Grades implícitas usam a propriedade `grid-template-columns` enquanto grades explícitas usam a propriedade `grid-template-rows`.

---

Grades explícitas usam a propriedade `grid-template-columns` enquanto grades implícitas usam a propriedade `grid-template-rows`.

---

Grades implícitas usam as propriedades `grid-template-columns` ou `grid-template-rows` para criar colunas enquanto linhas e colunas são criadas automaticamente em grades explícitas.

#### --answer--

Grades explícitas usam as propriedades `grid-template-columns` ou `grid-template-rows` para criar colunas enquanto linhas e colunas são criadas automaticamente em grades implícitas.

### --question--

#### --text--

Qual das seguintes unidades representa uma fração do espaço dentro do contêiner da grade?

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

O que são linhas de grade?

#### --distractors--

Forma abreviada para linhas e colunas.

---

Contornos de um elemento de grade.

---

Linhas ao longo das quais colunas e linhas da grade são criadas.

#### --answer--

Linhas nas quais cada um dos itens da grade começa e termina.

### --question--

#### --text--

O que a propriedade `grid-column` faz?

#### --distractors--

Adiciona um novo elemento de grade como filho do elemento ao qual ele é aplicado.

---

Alinha o texto no item da grade verticalmente.

---

Define duas colunas para um contêiner de grade.

#### --answer--

Informa ao item da grade em qual linha da grade ele deve começar e terminar.

### --question--

#### --text--

Como você cria quatro colunas de largura igual?

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

O que a propriedade `grid-template-areas` faz?

#### --distractors--

É usado para especificar onde o item começa em uma linha no contêiner de grade.

---

É usado para criar espaços entre as faixas no contêiner.

---

É usado para repetir seções na lista de faixas. 

#### --answer--

É usado para fornecer um nome para os itens que você vai posicionar na grade.

### --question--

#### --text--

O que a propriedade `grid-auto-flow` faz?

#### --distractors--

Controla a ordem em que os itens da grade são exibidos.

---

Ajusta o espaçamento entre os elementos da grade.

---

Ajusta automaticamente o elemento para caber na grade.

#### --answer--

Controla como os elementos auto-posicionados são inseridos na grade.

### --question--

#### --text--

Qual das seguintes é a maneira correta de usar a propriedade `grid-template-areas`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

Qual das seguintes é a maneira correta de trabalhar com a propriedade `grid-auto-flow`?

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

Qual dos seguintes NÃO é uma propriedade válida de grid?

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

Quais dessas propriedades podem ser usadas para centralizar itens dentro de um elemento grid?

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

Qual dos seguintes é um valor correto para usar com a propriedade `grid-auto-columns`?

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

O que são grid tracks?

#### --distractors--

Forma abreviada para linhas e colunas.

---

Linhas ao longo das quais você pode animar o movimento dos itens da grade.

---

Linhas nas quais cada um dos itens da grade começa e termina.

#### --answer--

Espaços entre duas linhas de grade adjacentes.

### --question--

#### --text--

Qual das seguintes é a maneira correta de usar a função `minmax()`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

Como você posiciona um item da grade dentro de um layout definido por `grid-template-areas`?

#### --distractors--

Definindo diretamente o tamanho e a localização do item dentro da grade usando `grid-template-rows` e `grid-template-columns`.

---

Ao usar a propriedade `grid-area` e especificar as posições de início e fim tanto da linha quanto da coluna.

---

Ao definir tanto `grid-area` quanto coordenadas explícitas em pixels.

#### --answer--

Ao atribuir a área nomeada à propriedade `grid-area` do item.

### --question--

#### --text--

O que a propriedade `grid-auto-rows` controla?

#### --distractors--

A altura das linhas definidas explicitamente.

---

A largura máxima das colunas da grade.

---

O espaçamento entre linhas.

#### --answer--

O tamanho das linhas criadas implicitamente.

### --question--

#### --text--

Qual propriedade você usaria para fazer um item de grade abranger várias linhas?

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

O que define uma grade explícita?

#### --distractors--

Faixas criadas automaticamente para ajustar o conteúdo.

---

Faixas definidas pela unidade `fr`.

---

Tracks adicionadas com `grid-auto-flow`.

#### --answer--

Tracks explicitamente definidos por `grid-template-columns` ou `grid-template-rows`.

### --question--

#### --text--

Qual valor para `grid-auto-flow` faria com que novos itens preenchessem as colunas primeiro?

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

Qual é o propósito de `grid-template-areas`?

#### --distractors--

Para auto-gerar faixas implícitas.

---

Para substituir a unidade `fr`.

---

Para definir valores de `z-index`.

#### --answer--

Para mapear visualmente itens para áreas nomeadas da grade.

### --question--

#### --text--

Como você pode fazer um item da grade começar na linha da coluna 2 e terminar na linha da coluna 4?

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

Qual é o efeito de `grid-template-columns: 1fr 2fr 1fr`?

#### --distractors--

Cria três colunas de largura igual.

---

Torna a coluna do meio três vezes mais larga que as outras.

---

Força todas as colunas a terem exatamente `1fr` de largura.

#### --answer--

Cria três colunas onde a do meio é duas vezes mais larga que as laterais.

### --question--

#### --text--

Como você criaria uma grade com 3 colunas iguais e um espaçamento de `20px` entre elas?

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

O que `repeat(3, minmax(100px, 1fr))` cria?

#### --distractors--

Três colunas que não podem encolher abaixo de `100px`.

---

Três colunas fixas de `100px`.

---

Três linhas com altura máxima de `1fr`.

#### --answer--

Três colunas que crescem proporcionalmente mas não encolhem abaixo de `100px`.

### --question--

#### --text--

Qual afirmação sobre grids implícitos é verdadeira?

#### --distractors--

Grades implícitas ignoram a propriedade `gap`.

---

As tracks implícitas devem ser definidas com `grid-template-areas`.

---

Faixas implícitas só podem ser criadas usando a propriedade `grid-auto-flow`.

#### --answer--

Faixas implícitas são criadas quando o conteúdo não cabe em faixas explícitas.

### --question--

#### --text--

O que a propriedade `place-items` faz no CSS Grid?

#### --distractors--

Define automaticamente o tamanho dos itens da grade com base no espaço disponível.

---

Ele controla as definições de colunas e linhas do template da grade.

---

Ele ajusta a ordem dos itens da grade dentro do contêiner.

#### --answer--

É uma forma abreviada de alinhar itens da grade tanto no eixo de bloco quanto no eixo inline.

### --question--

#### --text--

O que este CSS realiza?

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

Cria colunas fixas de `150px` que transbordam o contêiner.

---

Cria colunas que têm exatamente `1fr` de largura independentemente do conteúdo.

---

Cria no máximo uma coluna por `150px` de largura disponível.

#### --answer--

Cria colunas flexíveis que têm pelo menos `150px` e colapsam quando o espaço é limitado.

### --question--

#### --text--

Como você pode criar layouts de grade assimétricos?

#### --distractors--

Usando apenas unidades `fr`.

---

Misturando unidades de comprimento diferentes em `grid-template-columns`.

---

Ao definir `grid-asymmetric: true`.

#### --answer--

Definindo tamanhos diferentes para cada track.

### --question--

#### --text--

O que `grid-column-start: 2` faz em um item da grade?

#### --distractors--

Faz com que ocupe 2 colunas.

---

Desloca-o em 2 pixels.

---

Posiciona-o começando na segunda linha da grade vertical.

#### --answer--

Faz começar na linha da segunda coluna.

### --question--

#### --text--

Qual propriedade você usaria para controlar o comportamento de overflow em grid tracks?

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

Qual será o resultado para o seguinte código?

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

O container terá três colunas de largura igual e duas linhas com altura de `150px` cada.

---

O container terá três colunas, todas com largura de `100px` e duas linhas com altura de `150px`.

---

O container terá duas linhas, cada uma com altura de `1fr`.

#### --answer--

O container terá três colunas: 100px, `1fr` e `2fr` de largura e duas linhas: uma auto e uma com altura de `150px`.

### --question--

#### --text--

Como você faria para que um item da grade (`grid item`) ocupe todas as linhas disponíveis?

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

Qual propriedade controla o alinhamento dos itens da grade ao longo do eixo do bloco?

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

Como você pode garantir que um item da grade permaneça na primeira coluna independentemente das alterações na grade?

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
