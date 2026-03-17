---
id: bd7178d8c242eddfaeb5bd13
title: Visualizzare i dati con un grafico a dispersione
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**Obiettivo:** Crea un'app che sia funzionalmente simile a questa: <a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>.

Completa le seguenti storie utente e fai in modo che tutti i test vengano superati. Usa le librerie o le API che preferisci. Dai il tuo stile personale.

Puoi usare HTML, JavaScript, CSS e la libreria di visualizzazione basata su svg D3. I test richiedono che gli assi vengano generati usando la proprietà axis di D3, che crea automaticamente i segni di graduazione lungo l'asse. Questi segni sono necessari per superare i test D3 perché le loro posizioni vengono usate per determinare l’allineamento degli elementi tracciati. Troverai informazioni sulla generazione degli assi su <https://d3js.org/d3-axis>. Gli elementi DOM richiesti vengono interrogati al momento di ogni test. Se usi un framework front-end (come Vue per esempio), i risultati dei test potrebbero non essere accurati per contenuti dinamici. Speriamo di supportarli in futuro, ma attualmente questi framework non sono supportati per i progetti D3.

**Storia utente #1:** Posso vedere un elemento titolo che ha un corrispondente `id="title"`.

**Storia utente #2:** Posso vedere un asse x che ha un corrispondente `id="x-axis"`.

**Storia utente #3:** Posso vedere un asse y che ha un corrispondente `id="y-axis"`.

**Storia utente #4:** Posso vedere dei punti, ognuno con una classe `dot`, che rappresentano i dati tracciati.

**Storia utente #5:** Ogni punto dovrebbe avere le proprietà `data-xvalue` e `data-yvalue` contenenti i rispettivi valori `x` e `y`.

**Storia utente #6:** Le `data-xvalue` e `data-yvalue` di ogni punto dovrebbero essere nel range dei dati reali e nel formato dati corretto. Per `data-xvalue`, numeri interi (anni completi) o oggetti `Date` sono accettabili per la valutazione del test. Per `data-yvalue` (minuti), usa oggetti `Date`.

**Storia utente #7:** La `data-xvalue` e il punto corrispondente dovrebbero essere allineati con il punto/valore corrispondente sull’asse x.

**Storia utente #8:** La `data-yvalue` e il punto corrispondente dovrebbero essere allineati con il punto/valore corrispondente sull’asse y.

**Storia utente #9:** Posso vedere più etichette di segni di graduazione sull’asse y con formato tempo `%M:%S`.

**Storia utente #10:** Posso vedere più etichette di segni di graduazione sull’asse x che mostrano l’anno.

**Storia utente #11:** Posso vedere che il range delle etichette sull’asse x è entro il range dei dati reali dell’asse x.

**Storia utente #12:** Posso vedere che il range delle etichette sull’asse y è entro il range dei dati reali dell’asse y.

**Storia utente #13:** Posso vedere una legenda contenente testo descrittivo che ha `id="legend"`.

**Storia utente #14:** Posso passare il mouse su un’area e vedere un tooltip con un corrispondente `id="tooltip"` che mostra più informazioni sull’area.

**Storia utente #15:** Il mio tooltip dovrebbe avere una proprietà `data-year` che corrisponde a `data-xvalue` dell’area attiva.

Ecco il dataset che ti servirà per completare questo progetto: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

Puoi costruire il tuo progetto <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">usando questo template di CodePen</a> e cliccando `Save` per creare il tuo pen. Oppure puoi usare questo collegamento CDN per eseguire i test in qualsiasi ambiente preferisci: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

Quando hai finito, invia l’URL del tuo progetto funzionante con tutti i test superati.

# --solutions--

```js
// solution required
```
