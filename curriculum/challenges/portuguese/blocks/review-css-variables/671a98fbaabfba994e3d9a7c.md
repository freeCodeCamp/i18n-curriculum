---
id: 671a98fbaabfba994e3d9a7c
title: Revisão de Variáveis CSS
challengeType: 31
dashedName: review-css-variables
---

# --description--

## Propriedades Personalizadas CSS (Variáveis CSS)

- **Definição**: Propriedades personalizadas do CSS, também conhecidas como variáveis CSS, são entidades definidas por autores de CSS que contêm valores específicos para serem reutilizados ao longo de um documento. Elas são um recurso poderoso que permite folhas de estilo mais eficientes, fáceis de manter e flexíveis. Propriedades personalizadas são particularmente úteis na criação de designs temáticos. Você pode definir um conjunto de propriedades para diferentes temas:

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## A Regra `@property`

- **Definição**: A regra `@property` é um recurso poderoso do CSS que permite aos desenvolvedores definir propriedades personalizadas com maior controle sobre seu comportamento, incluindo como elas animam e seus valores iniciais. 

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: Este é o nome da propriedade personalizada que você está definindo. Como todas as propriedades personalizadas, ela deve começar com dois traços. `--property-name` pode ser coisas como `<color>`, `<length>`, `<number>`, `<percentage>` ou tipos mais complexos.
- **`syntax`**: Isso define o tipo da propriedade. 
- **`inherits`**: Isso especifica se a propriedade deve herdar seu valor do elemento pai. 
- **`initial-value`**: Isso define o valor padrão da propriedade.
- **Exemplo de Gradiente Usando a Regra `@property`**: Este exemplo cria um gradiente que anima suavemente quando o elemento é hoverado.

```html
<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

- **Fallbacks**: Ao usar a propriedade customizada, você pode fornecer um valor fallback usando a função `var()`, assim como faria com propriedades customizadas padrão:

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

Revise os tópicos e conceitos de CSS Variables.
