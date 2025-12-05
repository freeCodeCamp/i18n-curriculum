---
id: 66ed8fc9f45ce3ece4053eae
title: Questionário sobre animações no CSS
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 18 das 20 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual é o propósito da propriedade `transform` no CSS?

#### --distractors--

Para alterar a visibilidade de um elemento.

---

Para aplicar um efeito visual ao texto.

---

Para definir as dimensões de um elemento.

#### --answer--

Para modificar a posição, tamanho e forma de um elemento.

### --question--

#### --text--

Como a propriedade CSS `animation-direction` afeta uma animação?

#### --distractors--

Especifica se uma animação deve ser repetida.

---

Define a duração da animação.

---

Ele define a velocidade da animação.

#### --answer--

Define como uma animação deve ser executada.

### --question--

#### --text--

Qual propriedade CSS faz uma animação rodar 3 vezes?

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

Qual função de tempo CSS faz uma animação rodar em uma velocidade constante do início ao fim?

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

O que a regra `@keyframes` define em CSS?

#### --distractors--

As cores de um gradiente CSS.

---

Os ângulos de uma rotação CSS.

---

As dimensões de um elemento.

#### --answer--

As etapas de uma animação CSS.

### --question--

#### --text--

Qual é o propósito da função `translateX()` no CSS?

#### --distractors--

Ele altera a opacidade do elemento.

---

Ele gira o elemento.

---

Reposiciona o elemento verticalmente.

#### --answer--

Reposiciona o elemento horizontalmente.

### --question--

#### --text--

Qual das seguintes opções NÃO é uma preocupação potencial com animações CSS?

#### --distractors--

Eles podem causar desconforto ou dano físico a certos usuários.

---

Os usuários podem achá-los distrativos.

---

O uso excessivo pode levar a um desempenho ruim.

#### --answer--

Eles podem melhorar a experiência do usuário.

### --question--

#### --text--

Onde a regra `@keyframes` está definida?

#### --distractors--

Dentro do elemento `body` de um arquivo HTML.

---

Dentro do elemento `head` de um arquivo HTML.

---

Dentro de uma definição de classe CSS.

#### --answer--

No nível superior, fora de qualquer seletor CSS.

### --question--

#### --text--

Qual propriedade CSS permite pausar e retomar uma animação?

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

Qual valor deve ser atribuído à propriedade `animation-name` no CSS?

#### --distractors--

A duração da animação em segundos.

---

A função de temporização usada para a animação.

---

O atraso antes da animação começar em segundos.

#### --answer--

O nome da animação definido pelo `@keyframes`.

### --question--

#### --text--

O que essa regra `@keyframe` faz no elemento animado?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

Ele gira o elemento 90 graus no sentido horário.

---

Ele altera a cor do elemento para azul.

---

Ele escala o elemento para 50% do seu tamanho inicial e depois para 100% do seu tamanho inicial.

#### --answer--

Ele move o elemento horizontalmente de -50px a 100px, relativo ao seu ponto de partida.

### --question--

#### --text--

Qual propriedade CSS define como uma animação progride ao longo do tempo?

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

Qual propriedade CSS é usada para especificar que uma animação deve levar 5 segundos para ser concluída?

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

O que `50%` representa na seguinte regra `@keyframe` do CSS?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

O ponto de partida da animação.

---

O ponto final da animação.

---

A velocidade da animação.

#### --answer--

O ponto médio da animação.

### --question--

#### --text--

O que acontecerá quando a propriedade `transform: translateX(200px);` for aplicada?

#### --distractors--

O elemento se moverá 200px para a esquerda.

---

O elemento se moverá 200px para baixo.

---

O elemento irá girar 200 graus no sentido horário.

#### --answer--

O elemento se moverá 200px para a direita.

### --question--

#### --text--

Como a animação se comportará se `animation-iteration-count` estiver definido como `infinite`?

#### --distractors--

Ele será executado uma vez e parará.

---

Ele fará uma pausa após a primeira iteração.

---

Ele vai parar após três iterações.

#### --answer--

Ele irá repetir indefinidamente.

### --question--

#### --text--

Qual seletor `@keyframes` especifica o ponto de partida de uma animação?

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

Quais propriedades podem ser especificadas usando a propriedade CSS abreviada `animation`?

#### --distractors--

Apenas o nome da animação.

---

O nome e a duração da animação.

---

O nome, duração e atraso da animação.

#### --answer--

Todas as propriedades de animação.

### --question--

#### --text--

Qual propriedade CSS é usada para aplicar uma animação definida pela regra `@keyframes`?

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

Qual propriedade CSS permite definir um tempo antes de a animação começar?

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

O que a propriedade CSS `animation-delay` faz?

#### --distractors--

Define quanto tempo a animação dura.

---

Especifica a função de temporização.

---

Define a direção da animação.

#### --answer--

Atrasa o início da animação.

### --question--

#### --text--

Qual propriedade de animação especifica como o elemento deve ser estilizado antes e depois da animação?

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

Por que as animações CSS devem ser usadas com moderação?

#### --distractors--

Muitas animações CSS podem causar falhas nos estilos e estilos inconsistentes entre diferentes navegadores. 

---

Muitas animações CSS podem levar a classificações mais baixas ou inexistentes nos resultados dos motores de busca.

---

Muitas animações CSS irão automaticamente travar o servidor e aumentar a probabilidade de riscos de segurança. 

#### --answer--

Muitas animações CSS podem levar a um desempenho ruim e podem ser distrativas ou problemáticas para usuários com certas necessidades de acessibilidade.

### --question--

#### --text--

Qual propriedade de animação determina se a animação deve ser executada para frente, para trás ou alternadamente?

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

Qual consulta de mídia CSS detecta se o usuário solicitou animações ou efeitos de movimento mínimos?

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

Qual propriedade define quantas vezes uma `animation` se repete?

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

Qual regra CSS é usada para definir os estágios e estilos de uma animação em vários pontos durante sua duração?

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

Dentro da media query `reduced‑motion`, qual declaração desativa as transições?

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

O que a propriedade `animation-play-state` permite que você faça?

#### --distractors--

Defina quantas vezes a animação se repete.

---

Especifique quanto tempo a animação leva para ser concluída.

---

Determine a direção em que a animação é executada.

#### --answer--

Pausar e retomar a animação.

### --question--

#### --text--

Qual das seguintes opções é uma boa prática ao trabalhar com animações?

#### --distractors--

Use o máximo possível de cores piscantes e movimentos rápidos para chamar a atenção.

---

Evite testar animações em dispositivos ou tamanhos de tela diferentes.

---

Faça as animações durarem o máximo possível para garantir que os usuários as percebam.

#### --answer--

Evite conteúdo que pisque mais de três vezes por segundo para prevenir convulsões ou causar desconforto.

### --question--

#### --text--

Por que a declaração `!important` é usada nas regras CSS?

#### --distractors--

Para evitar que outras media queries sejam carregadas.

---

Para limitar estilos ao primeiro elemento filho.

---

Para depurar CSS com mais facilidade.

#### --answer--

Para garantir que essas regras tenham precedência sobre outros estilos.

### --question--

#### --text--

O que `animation-iteration-count: 1 !important;` garante no CSS?

#### --distractors--

Que as animações estão pausadas.

---

Que essas animações rodem infinitamente.

---

Que as animações invertam a direção a cada ciclo.

#### --answer--

Que quaisquer animações em loop sejam reproduzidas apenas uma vez.

### --question--

#### --text--

Qual propriedade CSS é usada para especificar quanto tempo uma animação deve levar para ser concluída?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

Qual propriedade NÃO faz parte do atalho `animation`?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

O que a regra `@keyframes` define?

#### --distractors--

A função de temporização de uma animação.

---

O estado padrão de um elemento.

---

As media queries para animações.

#### --answer--

A sequência de estilos em diferentes pontos de uma animação.

### --question--

#### --text--

O que essa regra `@keyframe` faz no elemento animado?

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

Ele escala o elemento de 0% a 100%.

---

Ele move o elemento da esquerda para a direita.

---

Ele altera a cor do texto para preto.

#### --answer--

Ele faz o elemento aparecer gradualmente diminuindo sua transparência.

### --question--

#### --text--

Em uma regra de keyframes, o que `100%` representa?

#### --distractors--

O início da animação.

---

O ponto intermediário.

---

A função de easing.

#### --answer--

O fim da animação.

### --question--

#### --text--

Qual propriedade controla o ritmo de uma `animation` durante sua duração?

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

O que os desenvolvedores devem considerar ao implementar animações para manter a acessibilidade?

#### --distractors--

Confie inteiramente em JavaScript para todas as animações.

---

Adicione animações frequentes e intensas para causar impacto.

---

Inclua apenas efeitos **fortes**, rápidos e surpreendentes.

#### --answer--

Use efeitos sutis e intencionais, respeite preferências e ofereça controle ao usuário.

### --question--

#### --text--

Qual das seguintes é a sintaxe correta para deslizar um elemento da esquerda?

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
