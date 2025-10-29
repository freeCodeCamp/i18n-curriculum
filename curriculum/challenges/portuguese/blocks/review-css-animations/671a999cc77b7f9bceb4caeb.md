---
id: 671a999cc77b7f9bceb4caeb
title: Revisão de Animações CSS
challengeType: 31
dashedName: review-css-animations
---

# --description--

## Noções básicas de Animação CSS

- **Definição**: Animações CSS permitem que você crie efeitos dinâmicos e visualmente atraentes em páginas web sem a necessidade de JavaScript ou programação complexa. Elas fornecem uma maneira de transitar suavemente elementos entre diferentes estilos ao longo de uma duração especificada.
- **A Regra `@keyframes`**: Esta regra define os estágios e estilos da animação. Ela especifica quais estilos o elemento deve ter em vários pontos durante a animação.

```css
@keyframes slide-in {
  0% {
    transform: translateX(-100%);
  }
  100% {
    transform: translateX(0);
  }
}
```

- **Propriedade `animation`**: Esta é a propriedade abreviada usada para aplicar animações.
- **`animation-name`**: Isso especifica o nome para a regra `@keyframes` a ser usada.
- **`animation-duration`**: Isso define quanto tempo a animação deve levar para ser concluída.
- **`animation-timing-function`**: Isso define como a animação progride ao longo do tempo (como ease, linear, ease-in-out).
- **`animation-delay`**: Isso especifica um atraso antes de a animação começar.
- **`animation-iteration-count`**: Isso define quantas vezes a animação deve se repetir.
- **`animation-direction`**: Isso determina se a animação deve ser executada para frente, para trás ou alternadamente.
- **`animation-fill-mode`**: Isso especifica como o elemento deve ser estilizado antes e depois da animação.
- **`animation-play-state`**: Isso permite que você pause e retome a animação.

## Acessibilidade e a Media Query `prefers-reduced-motion`

- **A Media Query `prefers-reduced-motion`**: Uma das principais preocupações de acessibilidade com animações é que elas podem causar desconforto ou até danos físicos a alguns usuários. Pessoas com distúrbios vestibulares ou sensibilidade ao movimento podem sentir tontura, náusea ou dores de cabeça quando expostas a certos tipos de movimento na tela. A media query `prefers-reduced-motion` permite que desenvolvedores web detectem se o usuário solicitou animações ou efeitos de movimento mínimos no nível do sistema.

```css
.animated-element {
  transition: transform 0.3s ease-in-out;
}

@media (prefers-reduced-motion: reduce) {
  .animated-element {
    transition: none;
  }
}
```

# --assignment--

Revise os tópicos e conceitos de CSS Animations.
