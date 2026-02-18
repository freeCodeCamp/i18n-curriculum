---
id: bd7178d8c242eddfaeb5bd13
title: Visualizar dados com um gráfico de dispersão
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**Objetivo:** Construir um aplicativo que seja funcionalmente semelhante a este: <a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>.

Atenda às histórias de usuário abaixo e faça com que todos os testes passem. Use quaisquer bibliotecas ou APIs de que você precisar. Dê ao projeto o seu próprio estilo pessoal.

Você pode usar HTML, JavaScript, CSS e a biblioteca de visualização D3, baseada em svg. Os testes requerem que os eixos sejam gerados usando a propriedade de eixos do D3, que geram automaticamente marcações ao longo do eixo. Essas marcações são exigidas para passar nos testes do D3 porque suas posições são usadas para determinar o alinhamento dos elementos do gráfico.  You will find information about generating axes at https://d3js.org/d3-axis. Os elementos DOM necessários são consultados no momento de cada teste. Se você usar um framework de front-end (como o Vue por exemplo), os resultados dos testes podem ser imprecisos para conteúdo dinâmico. Esperamos dar suporte a eles um dia, mas atualmente esses frameworks não são suportados para os projetos de D3.

**História de Usuário #1:** Eu posso ver um elemento de título que possui um `id="title"` correspondente.

**História de Usuário #2:** Posso ver um eixo x que possui um `id="x-axis"` correspondente.

**História de Usuário #3:** Eu posso ver um eixo y que possui um `id="y-axis"` correspondente.

**História de Usuário #4:** Posso ver pontos, que cada um tem uma classe `dot`, que representam os dados sendo plotados.

**História de Usuário #5:** Cada ponto deve possuir as propriedades `data-xvalue` e `data-yvalue` contendo seus respectivos valores de `x` e `y`.

**História de Usuário #6:** O `data-xvalue` e o `data-yvalue` de cada ponto devem estar dentro do intervalo dos dados reais e no formato de dados correto. Para `data-xvalue`, objetos de inteiros (anos completos) ou `Date` são aceitáveis para a avaliação dos testes. Para `data-yvalue` (minutos), use objetos `Date`.

**História de Usuário #7:** O `data-xvalue` e seu ponto correspondente devem alinhar-se com o ponto/valor correspondente no eixo x.

**História de Usuário #8:** O `data-yvalue` e seu ponto correspondente devem alinhar-se com o ponto/valor correspondente no eixo y.

**História do Usuário #9:** Posso ver múltiplos rótulos de marcação no eixo y com o formato de tempo `%M:%S`.

**História do Usuário #10:** Posso ver múltiplos rótulos de marcação no eixo x que mostram o ano.

**User Story #11:** Eu posso ver que o intervalo dos rótulos do eixo x está dentro do intervalo dos dados reais do eixo x.

**História de Usuário #12:** Posso ver que o intervalo dos rótulos do eixo y está dentro do intervalo dos dados reais do eixo y.

**História de Usuário #13:** Eu posso ver uma legenda contendo texto descritivo que possui `id="legend"`.

**História de Usuário #14:** Posso passar o mouse sobre uma área e ver uma tooltip correspondente com `id="tooltip"` que exibe mais informações sobre a área.

**História de Usuário #15:** Minha tooltip deve ter uma propriedade `data-year` que corresponda ao `data-xvalue` da área ativa.

Aqui está o conjunto de dados de que você vai precisar para completar esse projeto: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

Você pode construir seu projeto <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">usando este modelo do CodePen</a> e clicando em `Save` para criar seu próprio pen. Ou você pode usar este link CDN para executar os testes em qualquer ambiente que desejar: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

Quando tiver terminado, envie o URL do seu projeto depois de ele haver passado em todos os testes.

# --solutions--

```js
// solution required
```
