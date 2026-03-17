---
id: 672bccc8ea33bad87abb3c56
title: Qual è la differenza tra content-box e border-box?
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

La proprietà `box-sizing` può essere impostata su `content-box` o `border-box` per controllare come vengono calcolate la larghezza e l'altezza degli elementi.

Questa proprietà può essere impostata sul selettore universale (`*`) per applicarla a tutti gli elementi nel documento:

```css
* {
  box-sizing: border-box;
}
```

Il valore della proprietà `box-sizing` è `content-box` per impostazione predefinita, ma puoi scegliere `border-box` se necessario. Esploreremo prima `content-box` e poi passeremo a `border-box`.

Per capire come funzionano i modelli, devi conoscere i quattro concetti fondamentali del modello a riquadro CSS. Facciamo una rapida revisione.

- L'area contenuto è lo spazio occupato dal contenuto dell'elemento.
- La spaziatura interna è lo spazio tra l'area contenuto e il bordo.
- Il bordo è il contorno che circonda l'area contenuto e la spaziatura interna.
- Il margine è lo spazio esterno al bordo che separa l'elemento dagli altri elementi.

Nel modello `content-box`, la larghezza e l'altezza che imposti per un elemento determinano le dimensioni dell'area contenuto, ma non includono la spaziatura interna, il bordo o il margine. Usa `content-box` quando ti serve un controllo preciso sull'area contenuto. Quando imposti `width` e `height`, stai definendo solo la dimensione del contenuto stesso.

Per trovare la larghezza totale dell'elemento, devi aggiungere la spaziatura interna sinistra e destra e i bordi sinistro e destro. Allo stesso modo, l'altezza totale di un elemento si trova sommando l'altezza del contenuto, la spaziatura interna superiore e inferiore e i bordi superiore e inferiore.

Ad esempio, qui abbiamo un selettore di tipo CSS per tutti gli elementi `div`.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

In questo caso, se si usa `content-box` l'area contenuto sarà di 300px per 200px. La dimensione totale renderizzata include spaziatura interna e bordi — per esempio, larghezza totale = 300px (contenuto) + 40px (spaziatura interna) + 8px (bordi) = 348px; l'altezza totale si calcola allo stesso modo.

Ottimo! Ora esploriamo `border-box`. È diverso perché la larghezza e l'altezza che imposti includono il contenuto dell'elemento, la spaziatura interna e il bordo (ma non il margine). Usa `border-box` quando vuoi che la dimensione totale dell'elemento rimanga fissa anche se cambiano spaziatura interna o bordi — questo è spesso utile nei layout responsivi.

Con `border-box`, spaziatura interna e bordi sono inclusi all'interno della dimensione specificata dell'elemento. La `width` e la `height` che imposti diventano le dimensioni totali dell'elemento: contenuto + spaziatura interna + bordo; i margini restano esclusi.

Nell'esempio seguente, ci sono due elementi `div` con le stesse dimensioni ma valori diversi della proprietà `box-sizing`. Nota come questo comporti dimensioni totali diverse quando li vedi nel browser:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

Puoi vedere che entrambi hanno la stessa `width`, `height`, `padding`, `border` e `margin`. Le uniche differenze sono nei colori e nel valore della proprietà `box-sizing`. Questa piccola differenza ha un impatto molto importante sulle dimensioni finali.

Scegliere tra `content-box` e `border-box` dipende davvero dalle esigenze specifiche del tuo progetto. Anche se `border-box` sta diventando sempre più popolare per la sua semplicità e flessibilità, capire entrambi i modelli è importante per implementare layout CSS efficaci.

# --questions--

## --text--

Qual è il valore predefinito per la proprietà `box-sizing` nella maggior parte dei browser?

## --answers--

`content-box`

---

`border-box`

### --feedback--

Pensa al comportamento predefinito per la dimensione degli elementi.

---

`padding-box`

### --feedback--

Pensa al comportamento predefinito per la dimensione degli elementi.

---

`margin-box`

### --feedback--

Pensa al comportamento predefinito per la dimensione degli elementi.

## --video-solution--

1

## --text--

Qual è il vantaggio principale di usare `border-box` per creare layout responsivi?

## --answers--

Rende i calcoli più complicati.

### --feedback--

Pensa a come il modello `border-box` gestisce `padding` e `border` all'interno della larghezza e altezza specificate `width` e `height`.

---

Permette un controllo più preciso sulle dimensioni degli elementi.

### --feedback--

Pensa a come il modello `border-box` gestisce `padding` e `border` all'interno della larghezza e altezza specificate `width` e `height`.

---

Garantisce che gli elementi mantengano le dimensioni specificate indipendentemente dalle modifiche a `padding` o `border`.

---

Migliora la compatibilità tra browser.

### --feedback--

Pensa a come il modello `border-box` gestisce `padding` e `border` all'interno della larghezza e altezza specificate `width` e `height`.

## --video-solution--

3

## --text--

Nel modello `content-box`, cosa rappresenta la larghezza specificata `width` di un elemento?

## --answers--

La dimensione totale `width` dell'elemento, inclusi `padding`, `border` e `margin`.

### --feedback--

Pensa alla relazione tra l'area contenuto e le dimensioni complessive dell'elemento nel modello `content-box`.

---

La larghezza `width` solo dell'area contenuto.

---

La larghezza `width` del `border`.

### --feedback--

Pensa alla relazione tra l'area contenuto e le dimensioni complessive dell'elemento nel modello `content-box`.

---

La larghezza `width` del `padding`.

### --feedback--

Pensa alla relazione tra l'area contenuto e le dimensioni complessive dell'elemento nel modello `content-box`.

## --video-solution--

2
