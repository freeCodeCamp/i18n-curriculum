---
id: 587d781e367417b2b2512ac9
title: Cambiare la posizione relativa di un elemento
challengeType: 0
videoUrl: 'https://scrimba.com/c/czVmMtZ'
forumTopicId: 301044
dashedName: change-an-elements-relative-position
---

# --description--

CSS treats each HTML element as its own box, which is usually referred to as the <dfn>CSS Box Model</dfn>. Block-level items automatically start on a new line (think headings, paragraphs, and divs) while inline items sit within surrounding content (like images or spans). The default layout of elements in this way is called the <dfn>normal flow</dfn> of a document, but CSS offers the position property to override it.

Quando la posizione di un elemento è impostata a `relative`, ti è permesso specificare come il CSS dovrebbe spostarlo *relativamente* alla sua posizione corrente nel flusso normale della pagina. Si abbina alle proprietà CSS di offset `left` o `right`, e `top` o `bottom`. Queste dicono di quanti pixel, punti percentuali, o em spostare l'elemento *da* dove è normalmente posizionato. Il seguente esempio sposta il paragrafo di 10 pixel dal basso:

```css
p {
  position: relative;
  bottom: 10px;
}
```

Cambiare la posizione di un elemento a relative non lo rimuove dal flusso normale - altri elementi intorno ad esso si comportano ancora come se quell'elemento fosse nella sua posizione predefinita.

**Nota:** Il posizionamento ti dà molta flessibilità e potere sul layout visuale di una pagina. È bene ricordare che indipendentemente dalla posizione degli elementi, il markup HTML sottostante dovrebbe essere organizzato ed avere senso quando letto dall'alto verso il basso. Questo è il modo in cui gli utenti con disabilità visive (che si basano su dispositivi assistivi come gli screen reader) accedono ai tuoi contenuti.

# --instructions--

Cambia la `position` di `h2` a `relative`, e usa un offset CSS per spostarlo a 15 pixel dal `top` di dove si trova nel flusso normale. Nota che non vi è alcun impatto sulle posizioni degli elementi h1 e p circostanti.

# --hints--

L'elemento `h2` dovrebbe avere una proprietà `position` impostata a `relative`.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.position, 'relative');
```

Il tuo codice dovrebbe utilizzare un offset CSS per posizionare relativamente `h2` a 15px dal `top` rispetto a dove si troverebbe normalmente.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.top, '15px');
```

# --seed--

## --seed-contents--

```html
<style>
  h2 {


  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```

# --solutions--

```html
<style>
  h2 {
    position: relative;
    top: 15px;
  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```
