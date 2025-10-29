---
id: 66f1adcf97e3e4c1bd89ebf5
title: Questionário sobre desempenho na web
challengeType: 8
dashedName: quiz-web-performance
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 18 das 20 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual é a principal diferença entre real performance e perceived performance em desenvolvimento web?

#### --distractors--

O desempenho real foca no número de requisições HTTP feitas pelo navegador, enquanto o desempenho percebido é baseado na velocidade de renderização do CSS.

---

O desempenho real é apenas sobre os tempos de carregamento, enquanto o desempenho percebido está relacionado a elementos visuais como animações e indicadores de carregamento.

---

O desempenho real inclui apenas os tempos de processamento do lado do servidor, enquanto o desempenho percebido é inteiramente do lado do cliente.

#### --answer--

O desempenho real é a rapidez com que o conteúdo é carregado, enquanto o desempenho percebido é a rapidez com que os usuários acreditam que a página carrega.

### --question--

#### --text--

Qual métrica indica melhor a rapidez com que o conteúdo aparece em uma página web?

#### --distractors--

Tempo para Interatividade (TTI)

---

Tempo de Carregamento da Página (PLT)

---

Última Pintura com Conteúdo (LCP)

#### --answer--

Primeira Pintura com Conteúdo (FCP)

### --question--

#### --text--

Qual das seguintes opções NÃO é uma forma de reduzir os tempos de carregamento da página?

#### --distractors--

Otimização de Ativos de Mídia.

---

Aproveitando o Cache do Navegador.

---

Minificando e comprimindo arquivos.

#### --answer--

Usando apenas arquivos JPEG.

### --question--

#### --text--

O que é "time to usable"?

#### --distractors--

É o intervalo desde quando um usuário solicita uma página até quando ele pode interagir com os formulários na página.

---

É o tempo que leva para todas as imagens e animações ficarem disponíveis e utilizáveis. 

---

Este é o tempo que leva para todas as animações CSS e JavaScript carregarem na tela.

#### --answer--

É o intervalo desde quando um usuário solicita uma página até quando ele pode interagir significativamente com ela.

### --question--

#### --text--

O que o First Contentful Paint (FCP) mede?

#### --distractors--

O tempo total de carregamento de todos os arquivos JavaScript na página.

---

O atraso antes que um usuário possa interagir com quaisquer elementos na página.

---

O tempo necessário para que todas as folhas de estilo sejam totalmente carregadas e aplicadas.

#### --answer--

O tempo que leva para o primeiro trecho de texto ou imagem ser renderizado.

### --question--

#### --text--

Qual dos seguintes NÃO é uma ferramenta de medição de desempenho comumente usada?

#### --distractors--

Chrome DevTools

---

Lighthouse

---

WebPageTest

#### --answer--

WebMeasure

### --question--

#### --text--

Para que servem as Performance Web APIs?

#### --distractors--

É usado para medir o desempenho apenas para animações CSS.

---

É usado para acelerar automaticamente o desempenho de uma página web.

---

Ele fornece uma tabela detalhada de métricas de desempenho para o usuário.

#### --answer--

Ele permite que os desenvolvedores acompanhem com que eficiência uma página da web carrega e responde diretamente do código.

### --question--

#### --text--

Qual estratégia pode melhorar efetivamente a percepção de desempenho?

#### --distractors--

Usando imagens grandes para melhorar a qualidade visual geral.

---

Carregando estilos CSS por último para priorizar a renderização do conteúdo.

---

Pré-carregando todos os scripts para garantir que eles estejam prontos quando necessários.

#### --answer--

Exibindo um esqueleto de carregamento enquanto o conteúdo está sendo buscado.

### --question--

#### --text--

Qual dos seguintes se refere ao tempo que uma requisição leva para viajar entre o navegador e o servidor?

#### --distractors--

renderização

---

INP

---

CDN

#### --answer--

latência

### --question--

#### --text--

Como a otimização de CSS impacta o desempenho da página?

#### --distractors--

Ele impede que o navegador execute JavaScript desnecessário.

---

Ele reduz o tamanho total do arquivo das imagens.

---

Ele elimina a necessidade de lazy loading de imagens.

#### --answer--

Ele acelera a análise do HTML.

### --question--

#### --text--

Qual das opções a seguir mostra por quanto tempo a thread principal fica bloqueada por tarefas pesadas em JavaScript?

#### --distractors--

Ordem de origem

---

Taxa de rejeição

---

WebPageTest

#### --answer--

Tempo Total de Bloqueio

### --question--

#### --text--

Ao medir Interaction to Next Paint (INP), o que está sendo avaliado?

#### --distractors--

O tempo que a página leva para carregar completamente todos os estilos e imagens após uma interação do usuário.

---

O atraso entre a interação do usuário e a capacidade do navegador de registrar a próxima entrada do usuário.

---

O intervalo entre a execução do JavaScript e o navegador atualizar o conteúdo da página.

#### --answer--

O tempo entre a interação do usuário e o navegador respondendo ao renderizar o próximo frame.

### --question--

#### --text--

Qual das seguintes APIs fornece timestamps de alta precisão (em milissegundos) para medir quanto tempo diferentes partes do seu site levam para carregar?

#### --distractors--

`performance.delay()`

---

`performance.previous()`

---

`performance.next()`

#### --answer--

`performance.now()`

### --question--

#### --text--

Qual das seguintes APIs fornece uma análise detalhada de cada etapa do carregamento da página desde a consulta DNS até `DOMContentLoaded`?

#### --distractors--

API de Permissão de Tempo

---

API de Texto de Performance

---

Executar Timing API

#### --answer--

API de Medição de Desempenho

### --question--

#### --text--

Qual dos seguintes escuta eventos de desempenho como layout shifts, long tasks e user interactions?

#### --distractors--

```js
const observer = new PermitObserve((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PerformObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PermitObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

#### --answer--

```js
const observer = new PerformanceObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

### --question--

#### --text--

Como o carregamento preguiçoso de imagens melhora o desempenho da página?

#### --distractors--

Ele garante que todas as imagens carreguem imediatamente para uma melhor experiência do usuário.

---

Ele reduz o tamanho dos arquivos de imagem para acelerar o carregamento.

---

Ele pré-carrega imagens para evitar quaisquer atrasos no carregamento.

#### --answer--

Ele atrasa o carregamento de imagens não essenciais até que elas estejam visíveis.

### --question--

#### --text--

O que é code splitting?

#### --distractors--

Isso envolve dividir seu código React em módulos que executam apenas tarefas críticas

---

Isso envolve dividir seu código HTML em módulos que executam apenas tarefas não críticas.

---

Isso envolve dividir seu código CSS em módulos que executam tarefas críticas e não críticas.

#### --answer--

Isso envolve dividir seu código JavaScript em módulos que executam tarefas críticas e não críticas.

### --question--

#### --text--

Qual das seguintes é a maneira correta de fazer lazy load em uma imagem?

#### --distractors--

```html
<img src="placeholder.jpg" lazy="loading">
```

---

```html
<img src="placeholder.jpg" load="lazy">
```

---

```html
<img src="placeholder.jpg" lazy="load">
```

#### --answer--

```html
<img src="placeholder.jpg" loading="lazy">
```

### --question--

#### --text--

Qual das seguintes opções NÃO é uma forma de melhorar o INP?

#### --distractors--

Reduzindo o trabalho da thread principal dividindo tarefas longas de JavaScript.

---

Otimizando manipuladores de eventos.

---

Adiar ou carregar preguiçosamente ativos pesados.

#### --answer--

Usando apenas imagens PNG e JPEG.

### --question--

#### --text--

Por que a eficiência energética é um aspecto crucial do desempenho web?

#### --distractors--

Ele melhora o apelo visual geral da página da web.

---

Ele minimiza a quantidade de JavaScript usada em uma página da web.

---

Ele diminui o número de arquivos CSS necessários e faz seu CSS rodar mais rápido.

#### --answer--

Ele reduz a carga no hardware, conservando energia e melhorando a sustentabilidade.

