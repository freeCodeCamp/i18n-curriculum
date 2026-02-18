---
id: bd7168d8c242eddfaeb5bd13
title: Visualizar dados com um gráfico de barras
challengeType: 3
forumTopicId: 301464
dashedName: visualize-data-with-a-bar-chart
---

# --description--

**Objetivo:** Construir um aplicativo que seja funcionalmente semelhante a este: <a href="https://bar-chart.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://bar-chart.freecodecamp.rocks</a>.

Atenda às histórias de usuário abaixo e faça com que todos os testes passem. Use quaisquer bibliotecas ou APIs de que você precisar. Dê ao projeto o seu próprio estilo pessoal.

Você pode usar HTML, JavaScript, CSS e a biblioteca de visualização D3, baseada em svg. Os testes requerem que os eixos sejam gerados usando a propriedade de eixos do D3, que geram automaticamente marcações ao longo do eixo. Essas marcações são exigidas para passar nos testes do D3 porque suas posições são usadas para determinar o alinhamento dos elementos do gráfico.  You will find information about generating axes at https://d3js.org/d3-axis. Os elementos DOM necessários são consultados no momento de cada teste. Se você usar um framework de front-end (como o Vue por exemplo), os resultados dos testes podem ser imprecisos para conteúdo dinâmico. Esperamos dar suporte a eles um dia, mas atualmente esses frameworks não são suportados para os projetos de D3.

**User Story #1:** Meu gráfico deve ter um título com o correspondente `id="title"`.

**História de Usuário #2:** Meu gráfico deve ter um elemento `g` para o eixo x com um `id="x-axis"` correspondente.

**História de Usuário #3:** Meu gráfico deve ter um elemento `g` para o eixo y com um `id="y-axis"` correspondente.

**História do Usuário #4:** Ambos os eixos devem conter múltiplos rótulos de marcação, cada um com um correspondente `class="tick"`.

**História de Usuário #5:** Meu gráfico deve ter um elemento `rect` para cada ponto de dados com uma `class="bar"` correspondente exibindo os dados.

**User Story #6:** Cada `.bar` deve ter as propriedades `data-date` e `data-gdp` contendo os valores de `date` e `GDP`.

**User Story #7:** As propriedades `data-date` dos elementos `.bar` devem corresponder à ordem dos dados fornecidos.

**História do Usuário #8:** As propriedades `data-gdp` dos elementos `.bar` devem corresponder à ordem dos dados fornecidos.

**História de Usuário #9:** A altura de cada elemento `.bar` deve representar com precisão o `PIB` correspondente aos dados.

**História de Usuário #10:** O atributo `data-date` e seu elemento `.bar` correspondente devem alinhar-se com o valor correspondente no eixo x.

**História de Usuário #11:** O atributo `data-gdp` e seu elemento `.bar` correspondente devem alinhar-se com o valor correspondente no eixo y.

**História de Usuário #12:** Posso passar o mouse sobre uma área e ver uma tooltip com um `id="tooltip"` correspondente que exibe mais informações sobre a área.

**História de Usuário #13:** Minha tooltip deve ter uma propriedade `data-date` que corresponda ao `data-date` da área ativa.

Aqui está o dataset de que você precisará para completar este projeto: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/GDP-data.json`

Você pode construir seu projeto <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">usando este modelo do CodePen</a> e clicando em `Save` para criar seu próprio pen. Ou você pode usar este link CDN para executar os testes em qualquer ambiente que desejar: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`.

Quando tiver terminado, envie o URL do seu projeto depois de ele haver passado em todos os testes.

# --solutions--

```js
// solution required
```
