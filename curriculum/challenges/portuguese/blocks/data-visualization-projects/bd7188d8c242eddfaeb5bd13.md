---
id: bd7188d8c242eddfaeb5bd13
title: Visualizar dados com um mapa de calor
challengeType: 3
forumTopicId: 301466
dashedName: visualize-data-with-a-heat-map
---

# --description--

**Objetivo:** Construir um aplicativo que seja funcionalmente semelhante a este: <a href="https://heat-map.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://heat-map.freecodecamp.rocks</a>.

Atenda às histórias de usuário abaixo e faça com que todos os testes passem.Use quaisquer bibliotecas ou APIs de que você precisar.Dê ao projeto o seu próprio estilo pessoal.

Você pode usar HTML, JavaScript, CSS e a biblioteca de visualização D3, baseada em svg.Os elementos DOM necessários são consultados no momento de cada teste.Se você usar um framework de front-end (como o Vue por exemplo), os resultados dos testes podem ser imprecisos para conteúdo dinâmico.Esperamos dar suporte a eles um dia, mas atualmente esses frameworks não são suportados para os projetos de D3.

**História de Usuário #1:** Meu mapa de calor deve ter um título com um `id="title"` correspondente.

**História de Usuário #2:** Meu mapa de calor deve ter uma descrição com um `id="description"` correspondente.

**História de Usuário #3:** Meu mapa de calor deve ter um eixo x com um correspondente `id="x-axis"`.

**História de Usuário #4:** Meu mapa de calor deve ter um eixo y com um correspondente `id="y-axis"`.

**História de Usuário #5:** Meu mapa de calor deve ter elementos `rect` com `class="cell"` que representem os dados.

**User Story #6:** Deve haver pelo menos 4 cores de preenchimento diferentes usadas para as células.

**História de Usuário #7:** Cada célula terá as propriedades `data-month`, `data-year`, `data-temp` contendo seus respectivos valores de `mês`, `ano` e `temperatura`.

**História de Usuário #8:** O `data-month`, `data-year` de cada célula deve estar dentro do intervalo dos dados.

**User Story #9:** Meu mapa de calor deve ter células que se alinhem com o mês correspondente no eixo y.

**User Story #10:** Meu mapa de calor deve ter células que se alinhem com o ano correspondente no eixo x.

**User Story #11:** Meu mapa de calor deve ter múltiplos rótulos de marcação no eixo y com o nome completo do mês.

**História de Usuário #12:** Meu mapa de calor deve ter múltiplos rótulos de marcação no eixo x com os anos entre 1754 e 2015.

**História de Usuário #13:** Meu mapa de calor deve ter uma legenda com um `id="legend"` correspondente.

**História de Usuário #14:** Minha legenda deve conter elementos `rect`.

**História de Usuário #15:** Os elementos `rect` na legenda devem usar pelo menos 4 cores de preenchimento diferentes.

**História de Usuário #16:** Posso passar o mouse sobre uma área e ver uma tooltip correspondente com `id="tooltip"` que exibe mais informações sobre a área.

**História de Usuário #17:** Minha tooltip deve ter uma propriedade `data-year` que corresponda ao `data-year` da área ativa.

Aqui está o conjunto de dados de que você vai precisar para completar esse projeto: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/global-temperature.json`

Você pode construir seu projeto <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">usando este modelo do CodePen</a> e clicando em `Save` para criar seu próprio pen. Ou você pode usar este link CDN para executar os testes em qualquer ambiente que desejar: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

Quando tiver terminado, envie o URL do seu projeto depois de ele haver passado em todos os testes.

# --solutions--

```js
// solution required
```
