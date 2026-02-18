---
id: bd7158d8c442eddfaeb5bd0f
title: Criar um Relógio 25 + 5
challengeType: 3
forumTopicId: 301373
dashedName: build-a-25--5-clock
---

# --description--

**Nota:** **React 18 tem incompatibilidades conhecidas com os testes deste projeto (veja [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objetivo:** Construir um aplicativo que seja funcionalmente semelhante a este: <a href="https://25--5-clock.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://25--5-clock.freecodecamp.rocks</a>.

Atenda às histórias de usuário abaixo e faça com que todos os testes passem. Use quaisquer bibliotecas ou APIs de que você precisar. Dê ao projeto o seu próprio estilo pessoal.

Você pode usar qualquer mistura de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux e JQuery para completar este projeto. Você deve usar um framework de front-end (como React por exemplo) porque essa seção trata de aprender frameworks de front-end. Tecnologias adicionais não listadas acima não são recomendadas e usá-las é por sua conta e risco. Estamos buscando apoiar outros frameworks de front-end, como Angular e Vue, mas eles não são atualmente suportados. Vamos aceitar e tentar corrigir todos os relatórios de problemas que usem o conjunto de tecnologias sugeridas para esse projeto.  Happy coding!

**História de Usuário #1:** Posso ver um elemento com `id="break-label"` que contém uma string (por exemplo, "Duração do Intervalo").

**História de Usuário #2:** Posso ver um elemento com `id="session-label"` que contém uma string (por exemplo, "Duração da Sessão").

**User Story #3:** Posso ver dois elementos clicáveis com IDs correspondentes: `id="break-decrement"` e `id="session-decrement"`.

**User Story #4:** Posso ver dois elementos clicáveis com IDs correspondentes: `id="break-increment"` e `id="session-increment"`.

**User Story #5:** Posso ver um elemento com o correspondente `id="break-length"`, que por padrão (ao carregar) exibe um valor de 5.

**História de Usuário #6:** Posso ver um elemento com o correspondente `id="session-length"`, que por padrão exibe um valor de 25.

**História de Usuário #7:** Posso ver um elemento com o correspondente `id="timer-label"`, que contém uma string indicando que uma sessão foi iniciada (ex.: "Sessão").

**História de Usuário #8:** Eu posso ver um elemento com o correspondente `id="time-left"`. OBSERVAÇÃO: pausado ou em execução, o valor nesse campo deve sempre ser exibido no formato `mm:ss` (por exemplo, 25:00).

**História de Usuário #9:** Posso ver um elemento clicável com o correspondente `id="start_stop"`.

**História de Usuário #10:** Posso ver um elemento clicável com o correspondente `id="reset"`.

**História de Usuário #11:** Quando eu clicar no elemento com o id `reset`, qualquer temporizador em execução deve ser parado, o valor dentro de `id="break-length"` deve retornar para `5`, o valor dentro de `id="session-length"` deve retornar para 25, e o elemento com `id="time-left"` deve ser resetado para seu estado padrão.

**História de Usuário #12:** Quando clico no elemento com o id `break-decrement`, o valor dentro de `id="break-length"` decrementa em 1, e eu posso ver o valor atualizado.

**História de Usuário #13:** Quando clico no elemento com o id `break-increment`, o valor dentro de `id="break-length"` incrementa em 1, e eu posso ver o valor atualizado.

**História de Usuário #14:** Quando clico no elemento com o id `session-decrement`, o valor dentro de `id="session-length"` decrementa em 1, e eu posso ver o valor atualizado.

**História de Usuário #15:** Quando clico no elemento com o id `session-increment`, o valor dentro de `id="session-length"` incrementa em 1, e eu posso ver o valor atualizado.

**História do Usuário #16:** Eu não deveria ser capaz de definir um tempo de sessão ou intervalo para &lt;= 0.

**História de Usuário #17:** Eu não devo ser capaz de definir a duração da sessão ou do intervalo para > 60.

**História de Usuário #18:** Quando eu clicar pela primeira vez no elemento com `id="start_stop"`, o temporizador deve começar a contar a partir do valor atualmente exibido em `id="session-length"`, mesmo que o valor tenha sido incrementado ou decrementado em relação ao valor original de 25.

**User Story #19:** Se o temporizador estiver em execução, o elemento com o id `time-left` deve exibir o tempo restante no formato `mm:ss` (decrementando em 1 e atualizando a exibição a cada 1000ms).

**História de Usuário #20:** Se o temporizador estiver em execução e eu clicar no elemento com `id="start_stop"`, a contagem regressiva deve pausar.

**História de Usuário #21:** Se o temporizador estiver pausado e eu clicar no elemento com `id="start_stop"`, a contagem regressiva deve continuar a partir do ponto em que foi pausada.

**História de Usuário #22:** Quando a contagem regressiva da sessão atingir zero (NOTA: o temporizador DEVE chegar a 00:00), e uma nova contagem regressiva começar, o elemento com o id `timer-label` deve exibir uma string indicando que o intervalo começou.

**História de Usuário #23:** Quando a contagem regressiva da sessão atingir zero (NOTA: o temporizador DEVE chegar a 00:00), uma nova contagem regressiva de intervalo deve começar, contando a partir do valor atualmente exibido no elemento `id="break-length"`.

**História de Usuário #24:** Quando a contagem regressiva do intervalo atingir zero (NOTA: o temporizador DEVE chegar a 00:00), e uma nova contagem regressiva começar, o elemento com o id `timer-label` deve exibir uma string indicando que uma sessão foi iniciada.

**História de Usuário #25:** Quando a contagem regressiva do intervalo atingir zero (NOTA: o temporizador DEVE chegar a 00:00), uma nova contagem regressiva da sessão deve começar, contando a partir do valor atualmente exibido no elemento `id="session-length"`.

**História de Usuário #26:** Quando uma contagem regressiva atingir zero (NOTA: o temporizador DEVE chegar a 00:00), um som indicando que o tempo acabou deve ser reproduzido. Isso deve utilizar uma tag HTML5 `audio` e ter um id correspondente a `id="beep"`.

**User Story #27:** O elemento de áudio com `id="beep"` deve ter 1 segundo ou mais.

**História de Usuário #28:** O elemento de áudio com id `beep` deve parar de tocar e ser rebobinado para o início quando o elemento com o id `reset` for clicado.

Você pode construir seu projeto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando este modelo do CodePen</a> e clicando em `Save` para criar seu próprio pen. Se preferir usar outro ambiente, então coloque esta tag `<script>` dentro do corpo do seu arquivo `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Quando tiver terminado, envie o URL do seu projeto depois de ele haver passado em todos os testes.

# --solutions--

```js
// solution required
```
