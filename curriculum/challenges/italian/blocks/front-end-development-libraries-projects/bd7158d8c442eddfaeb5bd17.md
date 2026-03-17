---
id: bd7158d8c442eddfaeb5bd17
title: Costruisci una calcolatrice JavaScript
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**Nota:** **React 18 presenta incompatibilità note con i test di questo progetto (vedi [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Obiettivo:** Costruisci un'app che sia funzionalmente simile a questa: <a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks/</a>.

Completa le seguenti storie utente e fai in modo che tutti i test vengano superati. Usa le librerie o le API che preferisci. Dai il tuo tocco personale.

Puoi usare qualsiasi combinazione di HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux e jQuery per completare questo progetto. Dovresti usare un framework front-end (come React per esempio) perché questa sezione riguarda l'apprendimento dei framework front-end. Tecnologie aggiuntive non elencate sopra non sono raccomandate e usarle è a tuo rischio. Stiamo valutando il supporto per altri framework front-end come Angular e Vue, ma al momento non sono supportati. Accetteremo e cercheremo di risolvere tutti i problemi segnalati che usano lo stack tecnologico suggerito per questo progetto. Buona programmazione!

**Storia utente #1:** La mia calcolatrice dovrebbe contenere un elemento cliccabile contenente un `=` (segno di uguale) con un corrispondente `id="equals"`.

**Storia utente #2:** La mia calcolatrice dovrebbe contenere 10 elementi cliccabili contenenti ciascuno un numero da 0 a 9, con i seguenti ID corrispondenti: `id="zero"`, `id="one"`, `id="two"`, `id="three"`, `id="four"`, `id="five"`, `id="six"`, `id="seven"`, `id="eight"` e `id="nine"`.

**Storia utente #3:** La mia calcolatrice dovrebbe contenere 4 elementi cliccabili ciascuno contenente uno dei 4 operatori matematici principali con i seguenti ID corrispondenti: `id="add"`, `id="subtract"`, `id="multiply"`, `id="divide"`.

**Storia utente #4:** La mia calcolatrice dovrebbe contenere un elemento cliccabile contenente un simbolo `.` (punto decimale) con un corrispondente `id="decimal"`.

**Storia utente #5:** La mia calcolatrice dovrebbe contenere un elemento cliccabile con un `id="clear"`.

**Storia utente #6:** La mia calcolatrice dovrebbe contenere un elemento per mostrare i valori con un corrispondente `id="display"`.

**Storia utente #7:** In qualsiasi momento, premendo il pulsante `clear` si cancellano i valori di input e output e la calcolatrice torna allo stato iniziale; 0 dovrebbe essere mostrato nell'elemento con id `display`.

**Storia utente #8:** Mentre inserisco i numeri, dovrei poter vedere il mio input nell'elemento con id `display`.

**Storia utente #9:** In qualsiasi ordine, dovrei poter sommare, sottrarre, moltiplicare e dividere una catena di numeri di qualsiasi lunghezza, e quando premo `=` il risultato corretto dovrebbe essere mostrato nell'elemento con id `display`.

**Storia utente #10:** Durante l'inserimento dei numeri, la mia calcolatrice non dovrebbe permettere che un numero inizi con più zeri.

**Storia utente #11:** Quando si clicca sull'elemento decimale, un `.` dovrebbe essere aggiunto al valore attualmente mostrato; non dovrebbero essere accettati due `.` nello stesso numero.

**Storia utente #12:** Dovrei poter eseguire qualsiasi operazione (`+`, `-`, `*`, `/`) su numeri che contengono punti decimali.

**Storia utente #13:** Se vengono inseriti 2 o più operatori consecutivamente, l'operazione eseguita dovrebbe essere l'ultimo operatore inserito (escludendo il segno negativo `-`). Per esempio, se viene inserito `5 + * 7 =`, il risultato dovrebbe essere `35` (cioè `5 * 7`); se viene inserito `5 * - 5 =`, il risultato dovrebbe essere `-25` (cioè `5 * (-5)`).

**Storia utente #14:** Premere un operatore subito dopo `=` dovrebbe iniziare un nuovo calcolo che opera sul risultato della valutazione precedente.

**Storia utente #15:** La mia calcolatrice dovrebbe avere diversi decimali di precisione per l'arrotondamento (nota che non esiste uno standard esatto, ma dovresti essere in grado di gestire calcoli come `2 / 7` con una precisione ragionevole di almeno 4 decimali).

**Nota sulla logica della calcolatrice:** Va notato che esistono due principali scuole di pensiero sulla logica di input della calcolatrice: <dfn>logica di esecuzione immediata</dfn> e <dfn>logica formula</dfn>. Il nostro esempio utilizza la logica formula e rispetta la precedenza delle operazioni, mentre l'esecuzione immediata no. Entrambe sono accettabili, ma tieni presente che a seconda della scelta, la tua calcolatrice potrebbe dare risultati diversi dai nostri per certe equazioni (vedi esempio sotto). Finché la tua matematica può essere verificata da un'altra calcolatrice di produzione, non considerarla un bug.

**ESEMPIO:** `3 + 5 x 6 - 2 / 4 =`  

-   **Logica di esecuzione immediata:** `11.5`
-   **Logica formula/espressione:** `32.5`

Puoi costruire il tuo progetto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando questo template CodePen</a> e cliccando `Save` per creare il tuo pen. Se preferisci usare un altro ambiente, inserisci questo tag `<script>` nel corpo del tuo file `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Quando hai finito, invia l'URL del tuo progetto funzionante con tutti i test superati.

# --solutions--

```js
// solution required
```
