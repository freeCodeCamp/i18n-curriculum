---
id: 587d78a9367417b2b2512ae9
title: Usare una curva di Bezier per muovere una grafica
challengeType: 0
videoUrl: 'https://scrimba.com/c/c6bnRCK'
forumTopicId: 301071
dashedName: use-a-bezier-curve-to-move-a-graphic
---

# --description--

A previous challenge discussed the `ease-out` keyword that describes an animation change that speeds up first and then slows down at the end of the animation. On the right, the difference between the `ease-out` keyword (for the blue element) and `linear` keyword (for the red element) is demonstrated. Similar animation progressions to the `ease-out` keyword can be achieved by using a custom cubic Bezier curve function.

In generale, cambiando i punti di ancoraggio `p1` e `p2` otteniamo la creazione di diverse curve di Bezier, che controllano come l'animazione progredisce nel tempo. Ecco un esempio di curva di Bezier che usa valori per imitare lo stile `ease-out`:

```css
animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
```

Ricorda che tutte le funzioni `cubic-bezier` iniziano con `p0` a (0, 0) e terminano con `p3` a (1, 1). In questo esempio, la curva si muove più velocemente attraverso l'asse Y (inizia da 0, va a al valore y=0 per `p1`, poi va al valore y=1 per `p2`) mentre si muove attraverso l'asse X (iniziando da 0, poi 0 per `p1`, fino a 0.58 per `p2`). Di conseguenza, il cambiamento nell'elemento animato progredisce più velocemente rispetto al tempo dell'animazione per quel segmento. Verso la fine della curva, la relazione tra la variazione dei valori x e y si inverte - il valore y si sposta da 1 a 1 (nessuna modifica), e i valori x si spostano da 0.58 a 1, rendendo la progressione dell'animazione più lentamente rispetto alla durata.

# --instructions--

Per vedere l'effetto di questa curva di Bezier in azione, cambia la `animation-timing-function` dell'elemento con id `red` in una funzione `cubic-bezier` con valori x1, y1, x2, y2 fissati rispettivamente a `0, 0, 0.58, 1`. Questo farà progredire entrambi gli elementi attraverso l'animazione in modo simile.

# --hints--

Il valore della proprietà `animation-timing-function` dell'elemento con id `red` dovrebbe essere una funzione `cubic-bezier` con x1, y1, x2, y2 fissati rispettivamente a 0, 0, 0.58, 1 .

```js
const redElement = document.querySelector('#red');
const redStyle = window.getComputedStyle(redElement);
assert.equal(
  redStyle?.animationTimingFunction, 'cubic-bezier(0, 0, 0.58, 1)'
);
```

L'elemento con id `red` non dovrebbe più avere la proprietà `animation-timing-function` di `linear`.

```js
const redElement = document.querySelector('#red');
const redStyle = window.getComputedStyle(redElement);
assert.notEqual(redStyle?.animationTimingFunction, 'linear');
```

Il valore della proprietà `animation-timing-function` per l'elemento con id `blue` non dovrebbe cambiare.

```js
const blueElement = document.querySelector('#blue');
const blueStyle = window.getComputedStyle( blueElement);
const blueBallAnimation = __helpers.removeWhiteSpace(
  blueStyle?.animationTimingFunction
);
assert.isTrue(
  blueBallAnimation == 'ease-out' ||
    blueBallAnimation == 'cubic-bezier(0,0,0.58,1)'
);
```

# --seed--

## --seed-contents--

```html
<style>
  .balls{
    border-radius: 50%;
    position: fixed;
    width: 50px;
    height: 50px;
    margin-top: 50px;
    animation-name: bounce;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }
  #red {
    background: red;
    left: 27%;
    animation-timing-function: linear;
  }
  #blue {
    background: blue;
    left: 56%;
    animation-timing-function: ease-out;
  }
  @keyframes bounce {
    0% {
      top: 0px;
    }
    100% {
      top: 249px;
    }
  }
</style>
<div class="balls" id= "red"></div>
<div class="balls" id= "blue"></div>
```

# --solutions--

```html
<style>
  .balls{
    border-radius: 50%;
    position: fixed;
    width: 50px;
    height: 50px;
    margin-top: 50px;
    animation-name: bounce;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }
  #red {
    background: red;
    left: 27%;
    animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
  }
  #blue {
    background: blue;
    left: 56%;
    animation-timing-function: ease-out;
  }
  @keyframes bounce {
    0% {
      top: 0px;
    }
    100% {
      top: 249px;
    }
  }
</style>
<div class="balls" id= "red"></div>
<div class="balls" id= "blue"></div>
```
