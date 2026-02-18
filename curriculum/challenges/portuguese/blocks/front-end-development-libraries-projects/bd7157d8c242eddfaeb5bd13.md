---
id: bd7157d8c242eddfaeb5bd13
title: Criar um pré-visualizador de markdown
challengeType: 3
forumTopicId: 301372
dashedName: build-a-markdown-previewer
---

# --description--
**Nota:** **React 18 tem incompatibilidades conhecidas com os testes deste projeto (veja [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objetivo:** Construir um aplicativo que seja funcionalmente semelhante a este: <a href="https://markdown-previewer.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://markdown-previewer.freecodecamp.rocks/</a>.

Atenda às histórias de usuário abaixo e faça com que todos os testes passem. Use quaisquer bibliotecas ou APIs de que você precisar. Dê ao projeto o seu próprio estilo pessoal.

Você pode usar qualquer mistura de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux e JQuery para completar este projeto. Você deve usar um framework de front-end (como React por exemplo) porque essa seção trata de aprender frameworks de front-end. Tecnologias adicionais não listadas acima não são recomendadas e usá-las é por sua conta e risco. Estamos buscando apoiar outros frameworks de front-end, como Angular e Vue, mas eles não são atualmente suportados. Vamos aceitar e tentar corrigir todos os relatórios de problemas que usem o conjunto de tecnologias sugeridas para esse projeto.  Happy coding!

**História de Usuário #1:** Eu posso ver um elemento `textarea` com um `id="editor"` correspondente.

**História de Usuário #2:** Eu posso ver um elemento com o correspondente `id="preview"`.

**História de Usuário #3:** Quando eu digito texto no elemento `#editor`, o elemento `#preview` é atualizado enquanto eu digito para exibir o conteúdo da textarea.

**User Story #4:** Quando eu insiro markdown no estilo GitHub no elemento `#editor`, o texto é renderizado como HTML no elemento `#preview` enquanto eu digito (DICA: Você não precisa analisar o Markdown sozinho - pode importar a biblioteca Marked para isso: https://cdnjs.com/libraries/marked).

**História de Usuário #5:** Quando meu visualizador de markdown carregar pela primeira vez, o texto padrão no campo `#editor` deve conter markdown válido que represente pelo menos um de cada um dos seguintes elementos: um elemento de título (tamanho H1), um elemento de subtítulo (tamanho H2), um link, código inline, um bloco de código, um item de lista, uma citação em bloco, uma imagem e texto em negrito.

**História de Usuário #6:** Quando meu visualizador de markdown carregar pela primeira vez, o markdown padrão no campo `#editor` deve ser renderizado como HTML no elemento `#preview`.

**Bônus Opcional (você não precisa fazer este teste passar):** Meu visualizador de markdown interpreta retornos de carro e os renderiza como elementos `br` (quebra de linha).

Você pode construir seu projeto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando este modelo do CodePen</a> e clicando em `Save` para criar seu próprio pen. Se preferir usar outro ambiente, então coloque esta tag `<script>` dentro do corpo do seu arquivo `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Quando tiver terminado, envie o URL do seu projeto depois de ele haver passado em todos os testes.

# --solutions--

```js
// solution required
```
