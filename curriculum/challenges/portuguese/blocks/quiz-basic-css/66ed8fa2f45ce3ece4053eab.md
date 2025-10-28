---
id: 66ed8fa2f45ce3ece4053eab
title: Questionário básico de CSS
challengeType: 8
dashedName: quiz-basic-css
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 18 das 20 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

O que significa CSS?

#### --distractors--

Cascading Style Script

---

Concatenando Style Script

---

Estilo Castor Sage

#### --answer--

Folhas de Estilo em Cascata

### --question--

#### --text--

Qual das seguintes é uma regra CSS correta?

#### --distractors--

`p=red`

---

`p (color: red)`

---

`{p color: red;}`

#### --answer--

`p {color: red;}`

### --question--

#### --text--

O que `<meta name="viewport">` faz?

#### --distractors--

Ele vincula folhas de estilo externas a uma página da web para design responsivo.

---

Ele especifica os metadados usados pelos motores de busca para indexar uma página da web.

---

Ele especifica a codificação de caracteres usada na página da web.

#### --answer--

Ele controla a forma e o tamanho de uma página web em diferentes tamanhos de tela.

### --question--

#### --text--

Qual sintaxe está correta para usar CSS inline?

#### --distractors--

`<p color =  blue></p>`

---

`<p><style = blue></p>`

---

`p {color: blue;}`

#### --answer--

`<p style="color: blue;"></p>`

### --question--

#### --text--

Ao usar CSS interno, onde o elemento `style` é colocado dentro do HTML?

#### --distractors--

No elemento `meta`.

---

No elemento `script`.

---

No elemento `body`.

#### --answer--

No elemento `head`.

### --question--

#### --text--

Qual regra está correta para definir a largura e a altura em CSS?

#### --distractors--

`height-width: 50px;`

---

`width-and-height: 50px;`

---

`flex-width: 50px; flex-height: 50px;`

#### --answer--

`width: 50px; height: 50px;`

### --question--

#### --text--

Qual seletor direciona corretamente os elementos `h1` somente quando estão dentro de um `div`?

#### --distractors--

`div, h1 {}`

---

`div ~ h1 {}`

---

`div + h1 {}`

#### --answer--

`div h1 {}`

### --question--

#### --text--

Qual seletor está correto para direcionar filhos diretos de um `footer`?

#### --distractors--

`footer ~ ul {}`

---

`footer + ul {}`

---

`footer ul {}`

#### --answer--

`footer > ul {}`

### --question--

#### --text--

Qual seletor está correto para selecionar o próximo irmão de um `img`?

#### --distractors--

`img h1 {}`

---

`img > h1 {}`

---

`img ~ h1 {}`

#### --answer--

`img + h1 {}`

### --question--

#### --text--

Qual seletor está correto para selecionar todos os irmãos precedidos por um elemento `img`?

#### --distractors--

`img > caption {}`

---

`img caption {}`

---

`img + caption {}`

#### --answer--

`img ~ caption {}`

### --question--

#### --text--

Qual afirmação é VERDADEIRA sobre elementos de nível de bloco?

#### --distractors--

Elementos de nível de bloco são empilhados horizontalmente por padrão.

---

As propriedades `width` e `height` geralmente não se aplicam a elementos de nível de bloco a menos que você defina a propriedade `display` deles como `inline-block`.

---

Elementos de nível de bloco não podem conter elementos inline dentro deles.

#### --answer--

Elementos de nível de bloco começam em uma nova linha e ocupam toda a largura do seu contêiner.

### --question--

#### --text--

Qual afirmação é VERDADEIRA ao usar o valor `inline-block`?

#### --distractors--

Os elementos são empilhados verticalmente, sempre ocupando toda a largura do seu contêiner.

---

Os elementos se alinham horizontalmente mas não podem aplicar padding ou margin vertical.

---

Elementos respeitam as configurações de largura e altura mas não podem conter outros elementos dentro deles.

#### --answer--

Os elementos mantêm o fluxo inline mas permitem definir largura e altura.

### --question--

#### --text--

Dado os seguintes seletores, qual tem a maior especificidade?

#### --distractors--

`div`

---

`h1`

---

`p`

#### --answer--

`#id`

### --question--

#### --text--

Dado os seguintes seletores, qual tem a menor especificidade?

#### --distractors--

`#id`

---

`.class`

---

`div h1`

#### --answer--

`h1`

### --question--

#### --text--

O que o seletor `*` faz?

#### --distractors--

Aponta para alguns elementos na página.

---

Aponta para elementos que possuem filhos na página.

---

Aplica-se a todos os elementos `p` na página.

#### --answer--

Alvo todos os elementos na página.

### --question--

#### --text--

O que `!important` faz no CSS?

#### --distractors--

Isso faz com que a regra CSS funcione exclusivamente para estilos inline e ignore estilos definidos em folhas de estilo externas ou internas.

---

Ele desativa todas as outras propriedades CSS aplicadas ao mesmo elemento, efetivamente tornando-a a única regra que afeta o estilo do elemento.

---

Aplica-se a um determinado seletor ou grupo de elementos.

#### --answer--

Ele substitui quaisquer outros valores aplicados à propriedade para esse seletor.

### --question--

#### --text--

Como funciona o algoritmo CSS Cascade?

#### --distractors--

Ele determina os estilos do elemento com base na ordem de declaração, independentemente de outros fatores.

---

Ele aplica estilos baseando-se apenas na ordem em que são escritos, ignorando a especificidade.

---

Aplica estilos priorizando especificidade, ignorando origem e relevância.

#### --answer--

Ele determina os estilos do elemento com base na especificidade e na ordem de declaração.

### --question--

#### --text--

Qual regra aplica `32px` de margem em todos os lados?

#### --distractors--

`margin-top: 32px;`

---

`margin: 32px 0;`

---

`margin: 0 32px;`

#### --answer--

`margin: 32px;`

### --question--

#### --text--

Qual regra aplica `24px` de padding no topo e na parte inferior?

#### --distractors--

`padding: 24px;`

---

`padding-top-bottom: 24px;`

---

`padding: 0 24px;`

#### --answer--

`padding: 24px 0;`

### --question--

#### --text--

Para `padding: 10px 20px 30px 40px`, qual é a ordem correta dos valores?

#### --distractors--

Direita, Superior, Esquerda, Inferior.

---

Topo, Esquerda, Inferior, Direita.

---

Topo, Inferior, Direito, Esquerdo.

#### --answer--

Topo, Direita, Fundo, Esquerda.

## --quiz--

### --question--

#### --text--

Quais são as principais partes de uma regra CSS?

#### --distractors--

Elementos e atributos

---

Estilo e folhas

---

Scripts e valores

#### --answer--

Seletores e blocos de declaração

### --question--

#### --text--

Qual das seguintes é a sintaxe correta para uma regra CSS?

#### --distractors--

```css
body [
  font-family: Arial;
]
```

---

```css
font-family {
  body: Arial;
}
```

---

```css
body {
  font-family; Arial:
}
```

#### --answer--

```css
body {
  font-family: Arial;
}
```

### --question--

#### --text--

Quais são os estilos padrão do navegador?

#### --distractors--

Elementos HTML que possuem as mesmas propriedades de estilo independentemente do navegador.

---

São estilos obrigatórios que você deve usar para elementos HTML específicos.

---

Eles são os temas de cores para os vários navegadores.

#### --answer--

As regras de CSS que os navegadores aplicam automaticamente.

### --question--

#### --text--

Qual é o valor padrão para a propriedade `width`?

#### --distractors--

`none`

---

`0`

---

`100%`

#### --answer--

`auto`

### --question--

#### --text--

O que a propriedade `min-height` especifica?

#### --distractors--

A altura inicial para um elemento.

---

A altura para um elemento.

---

A altura máxima para um elemento.

#### --answer--

A altura mínima para um elemento.

### --question--

#### --text--

Qual das seguintes afirmações é VERDADEIRA sobre o seletor universal `*`?

#### --distractors--

Ele tem a maior especificidade porque pode estilizar todos os elementos em uma página.

---

Contribui com 1 para todas as partes do valor de especificidade. 

---

Não é possível redefinir estilos entre diferentes navegadores.

#### --answer--

Ele tem o menor valor de especificidade de qualquer seletor.

### --question--

#### --text--

Qual seletor direciona corretamente os elementos `li` para uma lista ordenada?

#### --distractors--

`li {}`

---

`ul li {}`

---

`ol + li {}`

#### --answer--

`ol li {}`

### --question--

#### --text--

Qual seletor direciona os elementos de parágrafo de um elemento `div`?

#### --distractors--

`p div {}`

---

`div, p {}`

---

`p, div {}`

#### --answer--

`div p {}`

### --question--

#### --text--

Onde o `margin` aplica propriedades de estilo?

#### --distractors--

O espaço dentro do elemento.

---

Entre o conteúdo e a borda.

---

Na borda do elemento.

#### --answer--

O espaço fora do elemento.

### --question--

#### --text--

Onde a propriedade `padding` aplica o estilo?

#### --distractors--

Entre a borda dos elementos e os elementos ao redor.

---

O espaço fora do elemento.

---

Na borda do elemento.

#### --answer--

O espaço dentro do elemento.

### --question--

#### --text--

Qual afirmação é FALSA sobre elementos de nível de bloco?

#### --distractors--

Eles podem se esticar para caber na largura do seu contêiner.

---

Elementos comuns de nível de bloco incluem `div`, `paragraph` e `section`.

---

Elementos de nível de bloco começam em uma nova linha e ocupam toda a largura do seu contêiner.

#### --answer--

Eles não podem ocupar toda a largura disponível pois estão bloqueados de fazê-lo.

### --question--

#### --text--

Qual afirmação é FALSA ao usar o valor `inline-block`?

#### --distractors--

Elementos `inline-block` se comportam como elementos inline.

---

Eles podem ter propriedades `width` e `height`.

---

Elementos mantêm fluxo inline mas permitem definir `width` e `height`.

#### --answer--

Eles não compartilham propriedades com elementos inline ou de nível de bloco.

### --question--

#### --text--

O que é VERDADEIRO sobre a palavra-chave `!important`?

#### --distractors--

Eles são usados para fazer comentários para uma propriedade CSS importante.

---

Eles garantem que uma propriedade CSS tenha a sintaxe correta.

---

Eles tornam as regras de CSS mais fáceis de manter.

#### --answer--

Eles substituem a especificidade de outros seletores.

### --question--

#### --text--

Qual caractere precede o nome de um seletor de classe?

#### --distractors--

`#`

---

`$`

---

`*`

#### --answer--

`.`

### --question--

#### --text--

Qual é FALSO sobre elementos de nível inline?

#### --distractors--

Eles ocupam apenas o espaço que precisam.

---

Eles não começam em uma nova linha.

---

Elementos inline comuns incluem `span` e `img`.

#### --answer--

Eles sempre começam em uma nova linha.

### --question--

#### --text--

Onde os estilos CSS internos são acessados?

#### --distractors--

São estilos que são importantes para o projeto, portanto não são compartilhados externamente.

---

Como eles formam o estilo principal do projeto, eles são salvos no arquivo `styles.css` para que outras páginas da web possam acessá-los.

---

Eles são armazenados dentro do elemento `body` quando há apenas uma página web para estilizar.

#### --answer--

Eles são escritos dentro da seção `style` dentro do elemento `head`.

### --question--

#### --text--

Qual é a ordem para aplicar a propriedade `padding` ao usar a sintaxe abreviada? 

#### --distractors--

`top`, `bottom`, `left`, `right`

---

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

#### --answer--

`top`, `right`, `bottom` e `left`

### --question--

#### --text--

Qual é a ordem para aplicar a propriedade `margin` ao usar a sintaxe abreviada? 

#### --distractors--

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

---

`top`, `bottom`, `left`, `right`

#### --answer--

`top`, `right`, `bottom` e `left`

### --question--

#### --text--

Para que servem os estilos CSS inline?

#### --distractors--

Eles são usados para estilizar apenas elementos inline.

---

Eles são usados para estilizar elementos somente quando todos eles aparecem na mesma linha da janela de visualização do navegador.

---

Eles são usados para resolver o problema com a separação de responsabilidades.

#### --answer--

Eles são usados para estilizar diretamente dentro do elemento, em vez de usar CSS interno ou externo.

### --question--

#### --text--

Qual símbolo precede o seletor de ID?

#### --distractors--

`.`

---

`*`

---

`$`

#### --answer--

`#`

