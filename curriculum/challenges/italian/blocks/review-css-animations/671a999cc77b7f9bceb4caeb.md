---
id: 671a999cc77b7f9bceb4caeb
title: Revisione delle animazioni CSS
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## Nozioni di base sulle animazioni CSS

- **Definizione**: Le animazioni CSS ti permettono di creare effetti dinamici e visivamente coinvolgenti sulle pagine web senza bisogno di JavaScript o programmazione complessa. Offrono un modo per passare in modo fluido tra stili diversi di un elemento in un intervallo di tempo specificato.
- **La regola `@keyframes`**: Questa regola definisce le fasi e gli stili dell'animazione. Specifica quali stili l'elemento deve avere in vari momenti durante l'animazione.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box">Slide</div>
```

```css
.box {
  width: 120px;
  padding: 10px;
  background: #0077ff;
  color: white;
  animation: slide-in 1s ease-in-out;
}

@keyframes slide-in {
  from {
    transform: translateX(-100%);
  }
  to {
    transform: translateX(0);
  }
}
```

:::

- **Proprietà `animation`**: Questa è la proprietà abbreviata usata per applicare le animazioni.
- **`animation-name`**: Specifica il nome della regola `@keyframes` da usare.
- **`animation-duration`**: Imposta la durata necessaria per completare l'animazione.
- **`animation-timing-function`**: Definisce come l'animazione procede nel tempo (ad esempio ease, linear, ease-in-out).
- **`animation-delay`**: Specifica un ritardo prima che l'animazione inizi.
- **`animation-iteration-count`**: Imposta quante volte l'animazione deve ripetersi.
- **`animation-direction`**: Determina se l'animazione deve andare avanti, indietro o alternare.
- **`animation-fill-mode`**: Specifica come l'elemento deve essere stilizzato prima e dopo l'animazione.
- **`animation-play-state`**: Permette di mettere in pausa e riprendere l'animazione.

## Accessibilità e la media query `prefers-reduced-motion`

- **La media query `prefers-reduced-motion`**: Una delle principali preoccupazioni di accessibilità con le animazioni è che possono causare disagio o addirittura danni fisici ad alcune persone. Chi soffre di disturbi vestibolari o sensibilità al movimento può provare vertigini, nausea o mal di testa quando è esposto a certi tipi di movimento sullo schermo. La media query `prefers-reduced-motion` permette agli sviluppatori web di rilevare se l’utente ha richiesto animazioni o effetti di movimento ridotti a livello di sistema.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<button class="animated-element">Hover me</button>
```

```css
.animated-element {
  padding: 10px 16px;
  transition: transform 0.3s ease-in-out;
}

.animated-element:hover {
  transform: translateX(20px);
}

@media (prefers-reduced-motion: reduce) {
  .animated-element {
    transition: none;
  }
}
```

:::

# --assignment--

Rivedi gli argomenti e i concetti sulle animazioni CSS.
