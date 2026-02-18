---
id: bd7158d8c442eddfaeb5bd13
title: Criar uma máquina de citação aleatória
challengeType: 3
forumTopicId: 301374
dashedName: build-a-random-quote-machine
---

# --description--
**Nota:** **React 18 tem incompatibilidades conhecidas com os testes deste projeto (veja [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objetivo:** Construir um aplicativo que seja funcionalmente semelhante a este: <a href="https://random-quote-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://random-quote-machine.freecodecamp.rocks/</a>.

Atenda às histórias de usuário abaixo e faça com que todos os testes passem. Use quaisquer bibliotecas ou APIs de que você precisar. Dê ao projeto o seu próprio estilo pessoal.

Você pode usar qualquer mistura de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux e JQuery para completar este projeto. Você deve usar um framework de front-end (como React por exemplo) porque essa seção trata de aprender frameworks de front-end. Tecnologias adicionais não listadas acima não são recomendadas e usá-las é por sua conta e risco. Estamos buscando apoiar outros frameworks de front-end, como Angular e Vue, mas eles não são atualmente suportados. Vamos aceitar e tentar corrigir todos os relatórios de problemas que usem o conjunto de tecnologias sugeridas para esse projeto.  Happy coding!

**História de Usuário #1:** Posso ver um elemento wrapper com o correspondente `id="quote-box"`.

**História de Usuário #2:** Dentro de `#quote-box`, posso ver um elemento com o correspondente `id="text"`.

**História de Usuário #3:** Dentro de `#quote-box`, posso ver um elemento com o correspondente `id="author"`.

**História de Usuário #4:** Dentro de `#quote-box`, posso ver um elemento clicável com o correspondente `id="new-quote"`.

**História de Usuário #5:** Dentro de `#quote-box`, posso ver um elemento clicável `a` com o correspondente `id="tweet-quote"`.

**História de Usuário #6:** No primeiro carregamento, minha máquina de citações exibe uma citação aleatória no elemento com `id="text"`.

**História de Usuário #7:** No primeiro carregamento, minha máquina de citações exibe o autor da citação aleatória no elemento com `id="author"`.

**História de Usuário #8:** Quando o botão `#new-quote` for clicado, minha máquina de citações deve buscar uma nova citação e exibi-la no elemento `#text`.

**User Story #9:** Minha máquina de citações deve buscar o autor da nova citação quando o botão `#new-quote` for clicado e exibi-lo no elemento `#author`.

**História de Usuário #10:** Posso tuitar a citação atual clicando no elemento `#tweet-quote` `a`. Esse elemento `a` deve incluir o caminho `"twitter.com/intent/tweet"` no seu atributo `href` para tweetar a citação atual.

**História de Usuário #11:** O elemento wrapper `#quote-box` deve estar centralizado horizontalmente. Execute testes com o zoom do navegador em 100% e com a página maximizada.

Você pode construir seu projeto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando este modelo do CodePen</a> e clicando em `Save` para criar seu próprio pen. Se preferir usar outro ambiente, então coloque esta tag `<script>` dentro do corpo do seu arquivo `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Quando tiver terminado, envie o URL do seu projeto depois de ele haver passado em todos os testes.

**Nota:** O Twitter não permite que links sejam carregados em um iframe. Tente usar o atributo `target="_blank"` ou `target="_top"` no elemento `#tweet-quote` se seu tweet não carregar. `target="_top"` substituirá a aba atual, então certifique-se de que seu trabalho esteja salvo.

# --solutions--

```js
// solution required
```
