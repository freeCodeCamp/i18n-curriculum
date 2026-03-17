---
id: bd7168d8c242eddfaeb5bd13
title: Visualizzare i dati con un grafico a barre
challengeType: 3
forumTopicId: 301464
dashedName: visualize-data-with-a-bar-chart
---

# --description--

**Obiettivo:** Crea un'app che sia funzionalmente simile a questa: <a href="https://bar-chart.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://bar-chart.freecodecamp.rocks</a>.

Completa le seguenti storie utente e fai in modo che tutti i test vengano superati. Usa le librerie o le API che preferisci. Dai un tocco personale al tuo stile.

Puoi usare HTML, JavaScript, CSS e la libreria di visualizzazione basata su SVG D3. I test richiedono che gli assi vengano generati usando la proprietà axis di D3, che crea automaticamente i segni di graduazione lungo l'asse. Questi segni sono necessari per superare i test D3 perché le loro posizioni vengono usate per determinare l’allineamento degli elementi del grafico. Troverai informazioni sulla generazione degli assi su <https://d3js.org/d3-axis>. Gli elementi DOM richiesti vengono interrogati al momento di ogni test. Se usi un framework front-end (come Vue per esempio), i risultati dei test potrebbero non essere accurati per contenuti dinamici. Speriamo di supportarli in futuro, ma attualmente questi framework non sono supportati per i progetti D3.

**Storia utente #1:** Il mio grafico dovrebbe avere un titolo con un corrispondente `id="title"`.

**Storia utente #2:** Il mio grafico dovrebbe avere un elemento `g` per l’asse x con un corrispondente `id="x-axis"`.

**Storia utente #3:** Il mio grafico dovrebbe avere un elemento `g` per l’asse y con un corrispondente `id="y-axis"`.

**Storia utente #4:** Entrambi gli assi dovrebbero contenere più etichette di segni di graduazione, ciascuna con un corrispondente `class="tick"`.

**Storia utente #5:** Il mio grafico dovrebbe avere un elemento `rect` per ogni punto dati con un corrispondente `class="bar"` che mostra i dati.

**Storia utente #6:** Ogni `.bar` dovrebbe avere le proprietà `data-date` e `data-gdp` contenenti valori `date` e `GDP`.

**Storia utente #7:** Le proprietà `.bar` degli elementi `data-date` dovrebbero corrispondere all’ordine dei dati forniti.

**Storia utente #8:** Le proprietà `.bar` degli elementi `data-gdp` dovrebbero corrispondere all’ordine dei dati forniti.

**Storia utente #9:** L’altezza di ogni elemento `.bar` dovrebbe rappresentare accuratamente il `GDP` corrispondente dei dati.

**Storia utente #10:** L’attributo `data-date` e il suo elemento `.bar` corrispondente dovrebbero essere allineati con il valore corrispondente sull’asse x.

**Storia utente #11:** L’attributo `data-gdp` e il suo elemento `.bar` corrispondente dovrebbero essere allineati con il valore corrispondente sull’asse y.

**Storia utente #12:** Posso passare il mouse su un’area e vedere un tooltip con un corrispondente `id="tooltip"` che mostra più informazioni sull’area.

**Storia utente #13:** Il mio tooltip dovrebbe avere una proprietà `data-date` che corrisponde al `data-date` dell’area attiva.

Ecco il dataset di cui avrai bisogno per completare questo progetto: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/GDP-data.json`

Puoi costruire il tuo progetto <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">usando questo template di CodePen</a> e cliccando `Save` per creare il tuo pen. Oppure puoi usare questo collegamento CDN per eseguire i test in qualsiasi ambiente preferisci: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`.

Quando hai finito, invia l’URL del tuo progetto funzionante con tutti i test superati.

# --solutions--

```js
// solution required
```
