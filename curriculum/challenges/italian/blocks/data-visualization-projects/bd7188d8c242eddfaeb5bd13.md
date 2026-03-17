---
id: bd7188d8c242eddfaeb5bd13
title: Visualizzare i dati con una mappa di calore
challengeType: 3
forumTopicId: 301466
dashedName: visualize-data-with-a-heat-map
---

# --description--

**Obiettivo:** Crea un'app che sia funzionalmente simile a questa: <a href="https://heat-map.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://heat-map.freecodecamp.rocks</a>.

Completa le seguenti storie utente e fai in modo che tutti i test vengano superati. Usa le librerie o le API che preferisci. Dai il tuo tocco personale.

Puoi usare HTML, JavaScript, CSS e la libreria di visualizzazione basata su SVG D3. Gli elementi DOM richiesti vengono interrogati al momento di ogni test. Se usi un framework front-end (come Vue per esempio), i risultati dei test potrebbero non essere accurati per contenuti dinamici. Speriamo di supportarli in futuro, ma attualmente questi framework non sono supportati per i progetti D3.

**Storia utente #1:** La mia mappa di calore dovrebbe avere un titolo con un corrispondente `id="title"`.

**Storia utente #2:** La mia mappa di calore dovrebbe avere una descrizione con un corrispondente `id="description"`.

**Storia utente #3:** La mia mappa di calore dovrebbe avere un asse x con un corrispondente `id="x-axis"`.

**Storia utente #4:** La mia mappa di calore dovrebbe avere un asse y con un corrispondente `id="y-axis"`.

**Storia utente #5:** La mia mappa di calore dovrebbe avere elementi `rect` con una `class="cell"` che rappresentano i dati.

**Storia utente #6:** Dovrebbero esserci almeno 4 colori di riempimento diversi usati per le celle.

**Storia utente #7:** Ogni cella avrà le proprietà `data-month`, `data-year`, `data-temp` contenenti i rispettivi valori `month`, `year` e `temperature`.

**Storia utente #8:** Le `data-month`, `data-year` di ogni cella dovrebbero essere comprese nell'intervallo dei dati.

**Storia utente #9:** La mia mappa di calore dovrebbe avere celle allineate con il mese corrispondente sull'asse y.

**Storia utente #10:** La mia mappa di calore dovrebbe avere celle allineate con l'anno corrispondente sull'asse x.

**Storia utente #11:** La mia mappa di calore dovrebbe avere più etichette di tick sull'asse y con il nome completo del mese.

**Storia utente #12:** La mia mappa di calore dovrebbe avere più etichette di tick sull'asse x con gli anni tra il 1754 e il 2015.

**Storia utente #13:** La mia mappa di calore dovrebbe avere una legenda con un corrispondente `id="legend"`.

**Storia utente #14:** La mia legenda dovrebbe contenere elementi `rect`.

**Storia utente #15:** Gli elementi `rect` nella legenda dovrebbero usare almeno 4 colori di riempimento diversi.

**Storia utente #16:** Posso passare il mouse su un'area e vedere un tooltip con un corrispondente `id="tooltip"` che mostra più informazioni sull'area.

**Storia utente #17:** Il mio tooltip dovrebbe avere una proprietà `data-year` che corrisponde alla `data-year` dell'area attiva.

Ecco il dataset di cui avrai bisogno per completare questo progetto: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/global-temperature.json`

Puoi costruire il tuo progetto <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow'>usando questo template CodePen</a> e cliccando `Save` per creare il tuo pen. Oppure puoi usare questo collegamento CDN per eseguire i test in qualsiasi ambiente preferisci: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

Quando hai finito, invia l'URL del tuo progetto funzionante con tutti i test superati.

# --solutions--

```js
// solution required
```
