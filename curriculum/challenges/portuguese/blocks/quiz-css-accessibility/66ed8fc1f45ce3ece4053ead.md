---
id: 66ed8fc1f45ce3ece4053ead
title: Questionário sobre acessibilidade no CSS
challengeType: 8
dashedName: quiz-css-accessibility
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 9 das 10 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

Por que você precisa ter um bom contraste de cores na sua página web?

#### --distractors--

Para tornar a página mais vibrante.

---

Para atender aos requisitos de otimização para mecanismos de busca (SEO).

---

Para destacar elementos importantes da página.

#### --answer--

Para tornar o conteúdo da página acessível e legível.

### --question--

#### --text--

Qual das seguintes ferramentas permite que você insira cores de fundo e primeiro plano e verifique sua relação de contraste?

#### --distractors--

TPGi Analisador de Contraste de Cor

---

Figma

---

Canva

#### --answer--

Verificador de Contraste de Cor do WebAIM

### --question--

#### --text--

Qual das seguintes ferramentas permite que você escolha cores de fundo e primeiro plano de uma página da web ao vivo e verifique a razão de contraste delas?

#### --distractors--

Figma

---

Canva

---

Verificador de Contraste de Cor do WebAIM

#### --answer--

TPGi Analisador de Contraste de Cor

### --question--

#### --text--

Por que você NÃO deve usar `display: none` e `visibility: hidden` para ocultar visualmente o conteúdo?

#### --distractors--

Esses métodos fazem com que apenas tecnologias assistivas como leitores de tela possam acessar o conteúdo oculto.

---

Esses métodos fazem com que o conteúdo fique oculto apenas até que os usuários movam o mouse sobre o conteúdo.

---

Esses métodos não funcionam com alguns navegadores.

#### --answer--

Esses métodos removem o conteúdo da árvore de acessibilidade, tornando impossível para leitores de tela acessarem o conteúdo oculto.

### --question--

#### --text--

O que é uma árvore de acessibilidade?

#### --distractors--

Uma representação visual do layout de uma página da web.

---

Uma estrutura usada por leitores de tela para ler o conteúdo de texto de uma página da web.

---

Uma cópia da árvore DOM.

#### --answer--

Uma estrutura usada por leitores de tela para interpretar e interagir com o conteúdo em uma página da web.

### --question--

#### --text--

Qual das opções a seguir garante que uma imagem tenha uma largura mínima de `400px`, mas fique mais larga quando a largura da viewport for maior que `1000px`?

#### --distractors--

```css
img {
  width: max(400px, 10vw);
}
```

---

```css
img {
  width: max(400px, 30vw);
}
```

---

```css
img {
  width: max(400px, 20vw);
}
```

#### --answer--

```css
img {
  width: max(400px, 40vw);
}
```

### --question--

#### --text--

Qual dos seguintes valores de `scroll-behavior` permite um comportamento de rolagem suave?

#### --distractors--

`auto`

---

`inherit`

---

`revert`

#### --answer--

`smooth`

### --question--

#### --text--

Qual dos seguintes recursos é usado para detectar a preferência de animação do usuário?

#### --distractors--

`prefers-contrast`

---

`display-mode`

---

`animation`

#### --answer--

`prefers-reduce-motion`

### --question--

#### --text--

Qual dos seguintes é um problema de acessibilidade do atributo `placeholder` em um elemento `input`?

#### --distractors--

O texto do placeholder impede que leitores de tela leiam o texto do rótulo do input.

---

O texto do placeholder impede que leitores de tela leiam o valor da entrada.

---

O texto do placeholder é muito pequeno para ser legível.

#### --answer--

O texto de espaço reservado pode ser confundido com um valor de entrada real.

### --question--

#### --text--

O que o atributo `hidden` faz?

#### --distractors--

Ele oculta o conteúdo e revela ao passar o mouse.

---

Ele oculta o conteúdo apenas da árvore de acessibilidade.

---

Ele oculta o conteúdo visualmente, mas o conteúdo está disponível na árvore de acessibilidade.

#### --answer--

Ele oculta o conteúdo tanto visualmente quanto da árvore de acessibilidade.
