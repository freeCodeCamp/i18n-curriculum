---
id: bd7158d8c442eddfaeb5bd13
title: Costruisci una macchina per citazioni casuali
challengeType: 3
forumTopicId: 301374
dashedName: build-a-random-quote-machine
---

# --description--
**Nota:** **React 18 presenta incompatibilità note con i test di questo progetto (vedi [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Obiettivo:** Costruisci un'app che sia funzionalmente simile a questa: <a href="https://random-quote-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://random-quote-machine.freecodecamp.rocks/</a>.

Completa le seguenti storie utente e fai in modo che tutti i test vengano superati. Usa le librerie o le API che preferisci. Dai il tuo tocco personale.

Puoi usare qualsiasi combinazione di HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux e jQuery per completare questo progetto. Dovresti usare un framework front-end (come React per esempio) perché questa sezione riguarda l'apprendimento dei framework front-end. Tecnologie aggiuntive non elencate sopra non sono raccomandate e usarle è a tuo rischio. Stiamo valutando il supporto per altri framework front-end come Angular e Vue, ma al momento non sono supportati. Accetteremo e cercheremo di risolvere tutti i problemi segnalati che usano lo stack tecnologico suggerito per questo progetto. Buona programmazione!

**Storia utente #1:** Posso vedere un elemento wrapper con un corrispondente `id="quote-box"`.

**Storia utente #2:** All'interno di `#quote-box`, posso vedere un elemento con un corrispondente `id="text"`.

**Storia utente #3:** All'interno di `#quote-box`, posso vedere un elemento con un corrispondente `id="author"`.

**Storia utente #4:** All'interno di `#quote-box`, posso vedere un elemento cliccabile con un corrispondente `id="new-quote"`.

**Storia utente #5:** All'interno di `#quote-box`, posso vedere un elemento `a` cliccabile con un corrispondente `id="tweet-quote"`.

**Storia utente #6:** Al primo caricamento, la mia macchina per citazioni mostra una citazione casuale nell'elemento con `id="text"`.

**Storia utente #7:** Al primo caricamento, la mia macchina per citazioni mostra l'autore della citazione casuale nell'elemento con `id="author"`.

**Storia utente #8:** Quando si clicca il pulsante `#new-quote`, la mia macchina per citazioni dovrebbe recuperare una nuova citazione e mostrarla nell'elemento `#text`.

**Storia utente #9:** La mia macchina per citazioni dovrebbe recuperare l'autore della nuova citazione quando si clicca il pulsante `#new-quote` e mostrarlo nell'elemento `#author`.

**Storia utente #10:** Posso twittare la citazione corrente cliccando sull'elemento `#tweet-quote` `a`. Questo elemento `a` dovrebbe includere il percorso `"twitter.com/intent/tweet"` nel suo attributo `href` per twittare la citazione corrente.

**Storia utente #11:** L'elemento wrapper `#quote-box` dovrebbe essere centrato orizzontalmente. Esegui i test con il livello di zoom del browser al 100% e la pagina massimizzata.

Puoi costruire il tuo progetto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando questo template di CodePen</a> e cliccando `Save` per creare il tuo pen. Se preferisci usare un altro ambiente, inserisci questo tag `<script>` nel corpo del tuo file `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Quando hai finito, invia l'URL del tuo progetto funzionante con tutti i test superati.

**Nota:** Twitter non permette di caricare collegamenti in un iframe. Prova a usare l'attributo `target="_blank"` o `target="_top"` sull'elemento `#tweet-quote` se il tuo tweet non si carica. `target="_top"` sostituirà la scheda corrente quindi assicurati che il tuo lavoro sia salvato.

# --solutions--

```js
// solution required
```
