---
id: bd7158d8c442eddfaeb5bd17
title: Criar uma calculadora JavaScript
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objetivo:** Construir um aplicativo que seja funcionalmente semelhante a este: <a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks/</a>.

Atenda às histórias de usuário abaixo e faça com que todos os testes passem.Use quaisquer bibliotecas ou APIs de que você precisar.Dê ao projeto o seu próprio estilo pessoal.

Você pode usar qualquer mistura de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux e JQuery para completar este projeto.Você deve usar um framework de front-end (como React por exemplo) porque essa seção trata de aprender frameworks de front-end.Tecnologias adicionais não listadas acima não são recomendadas e usá-las é por sua conta e risco.Estamos buscando apoiar outros frameworks de front-end, como Angular e Vue, mas eles não são atualmente suportados.Vamos aceitar e tentar corrigir todos os relatórios de problemas que usem o conjunto de tecnologias sugeridas para esse projeto. Happy coding!

**User Story #1:** Minha calculadora deve conter um elemento clicável contendo um `=` (sinal de igual) com um correspondente `id="equals"`.

**História do Usuário #2:** Minha calculadora deve conter 10 elementos clicáveis contendo um número cada, de 0 a 9, com os seguintes IDs correspondentes: `id="zero"`, `id="one"`, `id="two"`, `id="three"`, `id="four"`, `id="five"`, `id="six"`, `id="seven"`, `id="eight"` e `id="nine"`.

**User Story #3:** Minha calculadora deve conter 4 elementos clicáveis, cada um contendo um dos 4 operadores matemáticos primários com os seguintes IDs correspondentes: `id="add"`, `id="subtract"`, `id="multiply"`, `id="divide"`.

**User Story #4:** Minha calculadora deve conter um elemento clicável contendo um símbolo `.` (ponto decimal) com um `id="decimal"` correspondente.

**História de Usuário #5:** Minha calculadora deve conter um elemento clicável com um `id="clear"`.

**User Story #6:** Minha calculadora deve conter um elemento para exibir valores com um correspondente `id="display"`.

**História de Usuário #7:** A qualquer momento, pressionar o botão `clear` limpa os valores de entrada e saída, e retorna a calculadora ao seu estado inicializado; 0 deve ser exibido no elemento com o id `display`.

**User Story #8:** À medida que eu insiro números, devo ser capaz de ver minha entrada no elemento com o id `display`.

**História de Usuário #9:** Em qualquer ordem, eu devo ser capaz de adicionar, subtrair, multiplicar e dividir uma cadeia de números de qualquer comprimento, e quando eu pressionar `=`, o resultado correto deve ser exibido no elemento com o id `display`.

**História de Usuário #10:** Ao inserir números, minha calculadora não deve permitir que um número comece com múltiplos zeros.

**História de Usuário #11:** Quando o elemento decimal for clicado, um `.` deve ser adicionado ao valor atualmente exibido; dois `.` em um mesmo número não devem ser aceitos.

**História de Usuário #12:** Eu devo ser capaz de realizar qualquer operação (`+`, `-`, `*`, `/`) em números contendo pontos decimais.

**User Story #13:** Se 2 ou mais operadores forem inseridos consecutivamente, a operação realizada deve ser o último operador inserido (excluindo o sinal negativo (`-`)).Por exemplo, se `5 + * 7 =` for inserido, o resultado deve ser `35` (ou seja, `5 * 7`); se `5 * - 5 =` for inserido, o resultado deve ser `-25` (ou seja, `5 * (-5)`).

**História de Usuário #14:** Pressionar um operador imediatamente após `=` deve iniciar um novo cálculo que opere sobre o resultado da avaliação anterior.

**User Story #15:** Minha calculadora deve ter várias casas decimais de precisão quando se trata de arredondamento (observe que não existe um padrão exato, mas você deve ser capaz de lidar com cálculos como `2 / 7` com precisão razoável de pelo menos 4 casas decimais).

**Nota Sobre a Lógica da Calculadora:** Deve-se notar que existem duas principais correntes de pensamento sobre a lógica de entrada da calculadora: <dfn>lógica de execução imediata</dfn> e <dfn>lógica de fórmula</dfn>.Nosso exemplo utiliza a lógica da fórmula e observa a ordem de precedência de operação. A lógica de execução imediata não faz isso.Qualquer uma é aceitável, mas observe que, dependendo de qual você escolher, sua calculadora pode alcançar diferentes resultados do que os nossos para certas equações (veja abaixo um exemplo).Desde que sua matemática possa ser verificada por outra calculadora em produção, não considere isso um bug.

**EXEMPLO:** `3 + 5 x 6 - 2 / 4 =`  

-   **Lógica de Execução Imediata:** `11.5`
-   **Lógica da Fórmula/Expressão:** `32.5`

Você pode construir seu projeto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando este modelo do CodePen</a> e clicando em `Save` para criar seu próprio pen. Se preferir usar outro ambiente, então coloque esta tag `<script>` dentro do corpo do seu arquivo `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Quando tiver terminado, envie o URL do seu projeto depois de ele haver passado em todos os testes.

# --solutions--

```js
// solution required
```
