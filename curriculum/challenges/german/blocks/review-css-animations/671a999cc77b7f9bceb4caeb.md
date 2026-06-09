---
id: 671a999cc77b7f9bceb4caeb
title: Überprüfung von CSS-Animationen
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## Grundlagen der CSS-Animation

- **Definition**: CSS-Animationen ermöglichen es Ihnen, dynamische, visuell ansprechende Effekte auf Webseiten zu erzeugen, ohne JavaScript oder komplexe Programmierung zu benötigen. Sie bieten eine Möglichkeit, Elemente über eine festgelegte Dauer hinweg sanft zwischen verschiedenen Stilen zu überblenden.
- **Die `@keyframes`-Regel**: Diese Regel definiert die Phasen und Stile der Animation. Sie legt fest, welche Stile das Element zu verschiedenen Zeitpunkten der Animation haben soll.

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

- **`animation`-Eigenschaft**: Dies ist die Kurzschreibweise-Eigenschaft, die verwendet wird, um Animationen anzuwenden.
- **`animation-name`**: Diese Eigenschaft gibt den Namen der `@keyframes`-Regel an, die verwendet werden soll.
- **`animation-duration`**: Diese Eigenschaft legt fest, wie lange die Animation dauern soll.
- **`animation-timing-function`**: Diese Eigenschaft definiert, wie sich die Animation im Zeitverlauf verhält (z. B. `ease`, `linear`, `ease-in-out`).
- **`animation-delay`**: Diese Eigenschaft gibt eine Verzögerung an, bevor die Animation startet.
- **`animation-iteration-count`**: Diese Eigenschaft legt fest, wie oft die Animation wiederholt werden soll.
- **`animation-direction`**: Diese Eigenschaft bestimmt, ob die Animation in der `normal` Richtung, rückwärts (`reverse`) oder abwechselnd (`alternate`) abgespielt wird.
- **`animation-fill-mode`**: Diese Eigenschaft gibt an, wie das Element vor und nach der Animation gestylt sein soll.
- **`animation-play-state`**: Diese Eigenschaft ermöglicht es, die Animation anzuhalten und fortzusetzen.

## Barrierefreiheit und die `prefers-reduced-motion`-Media Query

- **Die `prefers-reduced-motion`-Media Query**: Eine der wichtigsten Barrierefreiheitsbedenken bei Animationen ist, dass sie bei manchen Nutzenden Unwohlsein oder sogar körperliche Beschwerden auslösen können. Menschen mit vestibulären Störungen oder Bewegungsempfindlichkeit können Schwindel, Übelkeit oder Kopfschmerzen erleben, wenn sie bestimmten Bewegungen auf dem Bildschirm ausgesetzt sind. Die `prefers-reduced-motion`-Media Query ermöglicht es Webentwicklern, zu erkennen, ob der Nutzer auf Systemebene minimale Animationen oder Bewegungseffekte angefordert hat.

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

Überprüfen Sie die Themen und Konzepte zu CSS-Animationen.
