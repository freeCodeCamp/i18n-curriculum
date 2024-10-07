---
id: 587d778f367417b2b2512aac
title: Evitare i problemi dovuti al daltonismo usando un contrasto sufficiente
challengeType: 0
videoUrl: 'https://scrimba.com/c/cmzMEUw'
forumTopicId: 301012
dashedName: avoid-colorblindness-issues-by-using-sufficient-contrast
---

# --description--

Color is a large part of visual design, but its use introduces two accessibility issues. First, color alone should not be used as the only way to convey important information because screen reader users won't see it. Second, foreground and background colors need sufficient contrast so colorblind users can distinguish them.

Nelle sfide precedenti abbiamo visto come utilizzare delle alternative testuali per risolvere il primo problema. La sfida precedente, invece, ci hamostrato come utilizzare gli strumenti per il controllo del contrasto per aiutarci a risolvere il secondo. Il rapporto di contrasto di 4.5:1 raccomandato dal WCAG vale sia per l'uso di colori che per le combinazioni in scala di grigi.

Gli utenti daltonici fanno fatica a distinguere alcuni colore da altri - solitamente per la tonalità ma a volte anche per la luminosità. Ricorderai che il rapporto di contrasto è calcolato usando i valori di luminanza (o luminosità) relativa del primo piano e dello sfondo.

In pratica, il contrasto 4.5:1 può essere raggiunto scurendo (aggiungendo nero) il colore più scuro e schiarendo (aggiungendo bianco) il colore più chiaro. Tonalità scure sulla ruota dei colori sono solitamente quelle di blu, violetto, magenta e rosso, mentre quelle più chiare sono arancione, giallo, verde e blu-verde.

# --instructions--

Camper Cat sta sperimentato colori per il testo e lo sfondo del suo blog, ma la combinazione attuale di verdastro per lo sfondo (`background-color`) e marrone per il testo (`color`) ha un rapporto di contrasto di 2.5:1. È possibile modificare facilmente la luminosità dei colori dal momento che li ha dichiarati usando la proprietà di CSS `hsl()` (che regola la tonalità, la saturazione e la luminosità) modificando il terzo argomento. Aumenta la luminosità di `background-color` dal 35% al 55% e diminuisci la luminosità di `color` dal 20% al 15%. Questo porterà il contrasto a 5.9:1.

# --hints--

Il tuo codice dovrebbe cambiare solamente il valore di luminosità per la proprietà `color` del testo a un valore del 15%.

```js
assert.match(code ,/color:\s*?hsl\(0,\s*?55%,\s*?15%\)/gi);
```

Il tuo codice dovrebbe solamente portare il valore di luminosità per la proprietà `background-color` a un valore del 55%.

```js
assert.match(code ,/background-color:\s*?hsl\(120,\s*?25%,\s*?55%\)/gi);
```

# --seed--

## --seed-contents--

```html
<head>
  <style>
  body {
    color: hsl(0, 55%, 20%);
    background-color: hsl(120, 25%, 35%);
  }
  </style>
</head>
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>A Word on the Recent Catnip Doping Scandal</h2>
    <p>The influence that catnip has on feline behavior is well-documented, and its use as an herbal supplement in competitive ninja circles remains controversial. Once again, the debate to ban the substance is brought to the public's attention after the high-profile win of Kittytron, a long-time proponent and user of the green stuff, at the Claw of Fury tournament.</p>
    <p>As I've stated in the past, I firmly believe a true ninja's skills must come from within, with no external influences. My own catnip use shall continue as purely recreational.</p>
  </article>
</body>
```

# --solutions--

```html
<head>
  <style>
  body {
    color: hsl(0, 55%, 15%);
    background-color: hsl(120, 25%, 55%);
  }
  </style>
</head>
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>A Word on the Recent Catnip Doping Scandal</h2>
    <p>The influence that catnip has on feline behavior is well-documented, and its use as an herbal supplement in competitive ninja circles remains controversial. Once again, the debate to ban the substance is brought to the public's attention after the high-profile win of Kittytron, a long-time proponent and user of the green stuff, at the Claw of Fury tournament.</p>
    <p>As I've stated in the past, I firmly believe a true ninja's skills must come from within, with no external influences. My own catnip use shall continue as purely recreational.</p>
  </article>
</body>
```
