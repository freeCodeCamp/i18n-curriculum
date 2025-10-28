---
id: 66f1aeb60b11aec5abe83c2e
title: Questionário sobre bibliotecas e frameworks do CSS
challengeType: 8
dashedName: quiz-css-libraries-and-frameworks
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 9 das 10 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

O que é um framework CSS?

#### --distractors--

Uma ferramenta para corrigir erros de CSS.

---

Uma ferramenta para lintar arquivos CSS.

---

Um formatador para arquivos CSS.

#### --answer--

Uma biblioteca para estilos CSS.

### --question--

#### --text--

Qual dos seguintes é um framework CSS popular baseado em utilitários?

#### --distractors--

Template CSS

---

Carregando CSS

---

CSS Mínimo

#### --answer--

Tailwind CSS

### --question--

#### --text--

Qual é uma desvantagem dos frameworks CSS?

#### --distractors--

Componentes insuficientes.

---

Sem opções de personalização.

---

Suporte aprimorado para navegadores.

#### --answer--

Pode aumentar o tamanho dos arquivos CSS.

### --question--

#### --text--

O que significa SCSS?

#### --distractors--

Super Cascading Style Sheets.

---

CSS Estruturado.

---

CSS simples.

#### --answer--

Sassy CSS.

### --question--

#### --text--

Qual das seguintes opções é uma característica do Sass?

#### --distractors--

Comentários

---

Linting de CSS.

---

CSS inline.

#### --answer--

Mixins

### --question--

#### --text--

Qual das seguintes é a maneira correta de usar classes utilitárias em Tailwind CSS?

#### --distractors--

```html
<button class="color-blue text-color font-size allow-hover round-btn">
  Button
</button>
```

---

```html
<button class="blue text font-size hover round-btn margin-full">
  Button
</button>
```

---


```html
<button class="set-blue set-text set-font set-hover round-btn padding-full">
  Button
</button>
```

#### --answer--


```html
<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>
```

### --question--

#### --text--

Quais são os dois tipos de frameworks CSS?

#### --distractors--

Frameworks CSS tablet first e frameworks CSS baseados em componentes.

---

Frameworks CSS utilitários e frameworks CSS com carregamento preguiçoso.

---

Frameworks CSS minimalistas e frameworks CSS Utility-first.

#### --answer--

Frameworks CSS utilitários e frameworks CSS baseados em componentes.

### --question--

#### --text--

Qual é a extensão de arquivo para SCSS?

#### --distractors--

`.sass`

---

`.scsss`

---

`.css`

#### --answer--

`.scss`

### --question--

#### --text--

Qual das seguintes é a maneira correta de definir uma variável em SCSS?

#### --distractors--

```css
#primary-color: #3498eb;

header {
  background-color: #primary-color;
}
```

---

```css
>primary-color: #3498eb;

header {
  background-color: >primary-color;
}
```

---

```css
?primary-color: #3498eb;

header {
  background-color: ?primary-color;
}
```

#### --answer--

```css
$primary-color: #3498eb;

header {
  background-color: $primary-color;
}
```

### --question--

#### --text--

Qual das seguintes é a maneira correta de definir um mixin?

#### --distractors--

```css
--mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
>mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

#### --answer--

```css
@mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

