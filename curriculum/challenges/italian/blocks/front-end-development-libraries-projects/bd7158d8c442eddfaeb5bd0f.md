---
id: bd7158d8c442eddfaeb5bd0f
title: Costruisci un orologio 25 + 5
challengeType: 3
forumTopicId: 301373
dashedName: build-a-25--5-clock
---

# --description--

**Nota:** **React 18 presenta incompatibilità note con i test di questo progetto (vedi [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Obiettivo:** Costruisci un'app che sia funzionalmente simile a questa: <a href="https://25--5-clock.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://25--5-clock.freecodecamp.rocks</a>.

Completa le seguenti storie utente e fai in modo che tutti i test vengano superati. Usa le librerie o le API che preferisci. Dai il tuo tocco personale.

Puoi usare qualsiasi combinazione di HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux e jQuery per completare questo progetto. Dovresti usare un framework front-end (come React per esempio) perché questa sezione riguarda l'apprendimento dei framework front-end. Tecnologie aggiuntive non elencate sopra non sono raccomandate e usarle è a tuo rischio. Stiamo valutando il supporto per altri framework front-end come Angular e Vue, ma al momento non sono supportati. Accetteremo e cercheremo di risolvere tutti i problemi segnalati che usano lo stack tecnologico suggerito per questo progetto. Buona programmazione!

**Storia utente #1:** Posso vedere un elemento con `id="break-label"` che contiene una stringa (es. "Break Length").

**Storia utente #2:** Posso vedere un elemento con `id="session-label"` che contiene una stringa (es. "Session Length").

**Storia utente #3:** Posso vedere due elementi cliccabili con gli id corrispondenti: `id="break-decrement"` e `id="session-decrement"`.

**Storia utente #4:** Posso vedere due elementi cliccabili con gli id corrispondenti: `id="break-increment"` e `id="session-increment"`.

**Storia utente #5:** Posso vedere un elemento con `id="break-length"` corrispondente, che per impostazione predefinita (all'avvio) mostra un valore di 5.

**Storia utente #6:** Posso vedere un elemento con `id="session-length"` corrispondente, che per impostazione predefinita mostra un valore di 25.

**Storia utente #7:** Posso vedere un elemento con `id="timer-label"` corrispondente, che contiene una stringa che indica che una sessione è iniziata (es. "Session").

**Storia utente #8:** Posso vedere un elemento con `id="time-left"` corrispondente. NOTA: in pausa o in esecuzione, il valore in questo campo deve sempre essere mostrato nel formato `mm:ss` (es. 25:00).

**Storia utente #9:** Posso vedere un elemento cliccabile con `id="start_stop"` corrispondente.

**Storia utente #10:** Posso vedere un elemento cliccabile con `id="reset"` corrispondente.

**Storia utente #11:** Quando clicco l'elemento con id `reset`, qualsiasi timer in esecuzione deve fermarsi, il valore in `id="break-length"` deve tornare a `5`, il valore in `id="session-length"` deve tornare a 25 e l'elemento con `id="time-left"` deve resettarsi al suo stato predefinito.

**Storia utente #12:** Quando clicco l'elemento con id `break-decrement`, il valore in `id="break-length"` diminuisce di 1 e posso vedere il valore aggiornato.

**Storia utente #13:** Quando clicco l'elemento con id `break-increment`, il valore in `id="break-length"` aumenta di 1 e posso vedere il valore aggiornato.

**Storia utente #14:** Quando clicco l'elemento con id `session-decrement`, il valore in `id="session-length"` diminuisce di 1 e posso vedere il valore aggiornato.

**Storia utente #15:** Quando clicco l'elemento con id `session-increment`, il valore in `id="session-length"` aumenta di 1 e posso vedere il valore aggiornato.

**Storia utente #16:** Non dovrei poter impostare una lunghezza di sessione o pausa <= 0.

**Storia utente #17:** Non dovrei poter impostare una lunghezza di sessione o pausa > 60.

**Storia utente #18:** Quando clicco per la prima volta l'elemento con `id="start_stop"`, il timer deve iniziare a contare dal valore attualmente mostrato in `id="session-length"`, anche se il valore è stato aumentato o diminuito rispetto al valore originale di 25.

**Storia utente #19:** Se il timer è in esecuzione, l'elemento con id `time-left` deve mostrare il tempo rimanente nel formato `mm:ss` (decrementando di 1 e aggiornando la visualizzazione ogni 1000ms).

**Storia utente #20:** Se il timer è in esecuzione e clicco l'elemento con `id="start_stop"`, il conto alla rovescia deve mettersi in pausa.

**Storia utente #21:** Se il timer è in pausa e clicco l'elemento con `id="start_stop"`, il conto alla rovescia deve riprendere dal punto in cui è stato messo in pausa.

**Storia utente #22:** Quando un conto alla rovescia di sessione raggiunge zero (NOTA: il timer DEVE arrivare a 00:00), e inizia un nuovo conto alla rovescia, l'elemento con id `timer-label` deve mostrare una stringa che indica che è iniziata una pausa.

**Storia utente #23:** Quando un conto alla rovescia di sessione raggiunge zero (NOTA: il timer DEVE arrivare a 00:00), deve iniziare un nuovo conto alla rovescia di pausa, partendo dal valore attualmente mostrato nell'elemento `id="break-length"`.

**Storia utente #24:** Quando un conto alla rovescia di pausa raggiunge zero (NOTA: il timer DEVE arrivare a 00:00), e inizia un nuovo conto alla rovescia, l'elemento con id `timer-label` deve mostrare una stringa che indica che è iniziata una sessione.

**Storia utente #25:** Quando un conto alla rovescia di pausa raggiunge zero (NOTA: il timer DEVE arrivare a 00:00), deve iniziare un nuovo conto alla rovescia di sessione, partendo dal valore attualmente mostrato nell'elemento `id="session-length"`.

**Storia utente #26:** Quando un conto alla rovescia raggiunge zero (NOTA: il timer DEVE arrivare a 00:00), deve suonare un audio che indica che il tempo è scaduto. Questo deve usare un tag HTML5 `audio` e avere un `id="beep"` corrispondente.

**Storia utente #27:** L'elemento audio con `id="beep"` deve durare almeno 1 secondo.

**Storia utente #28:** L'elemento audio con id `beep` deve smettere di suonare e tornare all'inizio quando si clicca l'elemento con id `reset`.

Puoi costruire il tuo progetto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando questo template di CodePen</a> e cliccando `Save` per creare il tuo pen. Se preferisci usare un altro ambiente, inserisci questo tag `<script>` nel corpo del tuo file `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Quando hai finito, invia l'URL del tuo progetto funzionante con tutti i test superati.

# --solutions--

```js
// solution required
```
