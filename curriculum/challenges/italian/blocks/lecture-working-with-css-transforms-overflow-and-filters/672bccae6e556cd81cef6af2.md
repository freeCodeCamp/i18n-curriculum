---
id: 672bccae6e556cd81cef6af2
title: Cos’è il margin collapsing e come funziona?
challengeType: 19
dashedName: what-is-margin-collapsing
---

# --interactive--

Il margin collapsing è un concetto fondamentale in CSS che spesso confonde chi si avvicina per la prima volta allo sviluppo web.

Questo comportamento si verifica quando i margini verticali di elementi adiacenti si sovrappongono, risultando in un unico margine pari al più grande dei due.

Capire il margin collapsing è importante per avere un controllo preciso sulla spaziatura e il layout nel design web. Quindi, vediamo come funziona il margin collapsing ed esploriamo alcuni scenari comuni in cui si verifica.

In CSS, quando due margini verticali entrano in contatto tra loro, si uniscono: invece di sommarsi, vince il margine più grande che determina lo spazio tra gli elementi. Questo comportamento vale solo per i margini verticali (alto e basso) e non per quelli orizzontali (sinistro e destro). Ecco un esempio per illustrare questo concetto:

:::interactive_editor

```html
<style>
  .box1 {
    margin-bottom: 20px;
    background-color: lightblue;
  }
  .box2 {
    margin-top: 30px;
    background-color: lightgreen;
  }
</style>

<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

:::

In questo esempio, potresti aspettarti che lo spazio totale tra `.box1` e `.box2` sia di 50 pixel (20 pixel più 30 pixel). Tuttavia, a causa del margin collapsing, lo spazio effettivo sarà di 30 pixel, che è il margine più grande tra i due.

Come abbiamo visto nell’esempio precedente, i margini degli elementi fratelli adiacenti si uniscono. Questo è il caso più semplice di margin collapsing. Esploriamo altri casi in cui può verificarsi.

I margini possono anche collassare tra un elemento genitore e il suo primo o ultimo figlio. Se non c’è bordo, spaziatura interna, contenuto in linea o clearance a separare il margine del genitore da quello del figlio, si uniranno.

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

In questo caso, potresti aspettarti che il figlio sia a 70 pixel dall’alto (40 pixel più 30 pixel). Tuttavia, i margini collassano e viene usato il margine più grande di 40 pixel.

Se un elemento non ha contenuto, spaziatura interna o bordo, i suoi margini superiore e inferiore possono collassare in un unico margine.

:::interactive_editor

```html
<style>
  .empty-block {
    margin-top: 20px;
    margin-bottom: 10px;
    height: 0;
  }
  .next-block {
    background-color: lightgray;
  }
</style>

<div class="empty-block"></div>
<div class="next-block">Next block</div>
```

:::

In questo esempio, i margini superiore e inferiore di `empty-block` collassano in un unico margine di 20 pixel, il più grande tra i due.

Ecco un esempio di come evitare il collasso usando la spaziatura interna:

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    padding-top: 1px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

In questo caso, la spaziatura interna di un pixel sul genitore impedisce il collasso del margine, risultando in uno spazio totale di 71 pixel dall’alto del genitore all’alto del contenuto del figlio.

Capire il margin collapsing è importante per avere un controllo preciso sul layout e sulla spaziatura in CSS. Anche se a volte può portare a risultati inattesi, è una funzionalità pensata per creare spaziature più estetiche e coerenti nei documenti. Sapendo quando si verifica il margin collapsing e come evitarlo quando serve, puoi creare layout più prevedibili e facili da mantenere nei tuoi progetti web.

# --questions--

## --text--

In quale direzione avviene il margin collapsing?

## --answers--

Solo i margini orizzontali.

### --feedback--

Pensa a quali margini (alto, basso, sinistro, destro) sono interessati da questo comportamento.

---

Solo i margini verticali.

---

Sia i margini orizzontali sia quelli verticali.

### --feedback--

Pensa a quali margini (alto, basso, sinistro, destro) sono interessati da questo comportamento.

---

Margini diagonali.

### --feedback--

Pensa a quali margini (alto, basso, sinistro, destro) sono interessati da questo comportamento.

## --video-solution--

2

## --text--

Cosa succede quando due elementi adiacenti hanno valori di margine diversi?

## --answers--

I margini si sommano.

### --feedback--

Considera quale margine "vince" quando avviene il collasso.

---

Viene usato il margine più piccolo.

### --feedback--

Considera quale margine "vince" quando avviene il collasso.

---

Viene usato il margine più grande.

---

Viene usata la media dei due margini.

### --feedback--

Considera quale margine "vince" quando avviene il collasso.

## --video-solution--

3

## --text--

Quale delle seguenti opzioni NON impedisce il margin collapsing tra un genitore e il suo primo figlio?

## --answers--

Aggiungere un `border` al genitore.

### --feedback--

Pensa a quali proprietà creano una separazione tra i margini del genitore e del figlio.

---

Impostare `padding-top: 1px;` sul genitore.

### --feedback--

Pensa a quali proprietà creano una separazione tra i margini del genitore e del figlio.

---

Usare `display: inline-block;` sul figlio.

### --feedback--

Pensa a quali proprietà creano una separazione tra i margini del genitore e del figlio.

---

Impostare `margin-top: 0;` sul figlio.

## --video-solution--

4
