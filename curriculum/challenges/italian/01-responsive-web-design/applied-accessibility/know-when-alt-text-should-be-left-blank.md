---
id: 587d774c367417b2b2512a9d
title: Sapere quando il testo alternativo dovrebbe essere lasciato vuoto
challengeType: 0
videoUrl: 'https://scrimba.com/c/cM9P4t2'
forumTopicId: 301019
dashedName: know-when-alt-text-should-be-left-blank
---

# --description--

In the last challenge, you learned that including an `alt` attribute when using `img` tags is mandatory. However, sometimes images are grouped with a caption already describing them, or are used for decoration only. In these cases, `alt` text may seem redundant or unnecessary.

Quando un'immagine è già spiegata con del contenuto testuale o non aggiunge altro significato alla pagina, il tag `img` ha ancora bisogno di un attributo `alt`, ma esso può essere impostato su una stringa vuota. Ecco un esempio:

```html
<img src="visualDecoration.jpeg" alt="">
```

Le immagini di sfondo solitamente cadono nella categoria 'decorativo'. Tuttavia, sono tipicamente applicate con regole CSS e quindi sono escluse dal processo di lettura dello schermo.

**Nota:** Per le immagini con didascalia, potresti voler includere comunque il testo `alt` poiché aiuta i motori di ricerca a catalogare il contenuto dell'immagine.

# --instructions--

Camper Cat ha scritto lo scheletro della pagina per la sezione blog del suo sito. Vuole aggiungere una separazione visiva tra i suoi due articoli usando l'immagine decorativa di una spada samurai. Aggiungi un attributo `alt` al tag `img` e impostalo su una stringa vuota. (Nota che il link all'immagine sorgente `src` non punta ad un file reale - non preoccuparti che non ci siano spade mostrate nella pagina.)

# --hints--

Il tuo tag `img` dovrebbe avere un attributo `alt`.

```js
assert.isTrue(document.querySelector('img')?.hasAttribute('alt'));
```

L'attributo `alt` dovrebbe essere impostato su una stringa vuota.

```js
assert.isEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<h1>Deep Thoughts with Master Camper Cat</h1>
<article>
  <h2>Defeating your Foe: the Red Dot is Ours!</h2>
  <p>To Come...</p>
</article>

<img src="samuraiSwords.jpeg">

<article>
  <h2>Is Chuck Norris a Cat Person?</h2>
  <p>To Come...</p>
</article>
```

# --solutions--

```html
<h1>Deep Thoughts with Master Camper Cat</h1>
<article>
  <h2>Defeating your Foe: the Red Dot is Ours!</h2>
  <p>To Come...</p>
</article>

<img src="samuraiSwords.jpeg" alt="">

<article>
  <h2>Is Chuck Norris a Cat Person?</h2>
  <p>To Come...</p>
</article>
```
