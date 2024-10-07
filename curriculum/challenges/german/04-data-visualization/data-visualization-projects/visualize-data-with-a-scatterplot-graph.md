---
id: bd7178d8c242eddfaeb5bd13
title: Visualisiere Daten mit einem Scatterplot-Diagramm (Streudiagramm)
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**Objective:** Build an app that is functionally similar to this: <a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>.

Erfülle die untenstehenden User Stories und bringe alle Tests zum Bestehen. Verwende die Bibliotheken oder APIs deiner Wahl. Gib dem Ganzen deinen persönlichen Stil.

Du kannst HTML, JavaScript, CSS und die D3-Svg-basierte Visualisierungsbibliothek verwenden. Für die Tests müssen die Achsen mit Hilfe der D3-Achseneigenschaft erzeugt werden, die automatisch Markierungen entlang der Achse erzeugt. Diese Achsenmarkierungen sind notwendig, um die D3-Tests zu erfüllen, da diese zur Bestimmung der Ausrichtung von grafischen Elementen verwendet werden. Die Informationen zur Erstellung von Achsen findest du unter <https://d3js.org/d3-axis>. Erforderliche DOM-Elemente werden zum Zeitpunkt eines jeden Tests abgefragt. Falls du ein Frontend-Framework (wie z.B. Vue) verwendest, kann es passieren, dass die Testergebnisse für dynamische Inhalte ungenau sind. Wir hoffen, dass wir diese irgendwann berücksichtigen können, aber derzeit werden diese Frameworks nicht für D3-Projekte unterstützt.

**User Story #1:** Ich kann ein Titelelement sehen, das einen entsprechenden `id="title"` hat.

**User Story #2:** Ich kann eine x-Achse sehen, die eine entsprechende `id="x-axis"` hat.

**User Story #3:** Ich kann eine entsprechende y-Achse sehen, die eine entsprechende `id="y-axis"` hat.

**User Story #4:** Ich kann Punkte sehen, die jeweils eine Klasse von `dot` haben, die die zu zeichnenden Daten darstellen.

**User Story #5:** Jeder Punkt sollte die Eigenschaften `data-xvalue` und `data-yvalue` haben, die die entsprechenden `x` und `y`-Werte beinhalten.

**User Story #6:** Die `data-xvalue` und `data-yvalue` eines jeden Punktes sollte im Bereich der tatsächlichen Daten und im richtigen Datenformat liegen. Für `data-xvalue`, sind ganze Zahlen (ganzes Jahr) oder `Date`-Objekte für die Testauswertung akzeptabel. Für `data-yvalue` (Minuten), verwende `Date`-Objekte.

**User Story #7:** Die `data-xvalue` und der zugehörige Punkt sollte mit dem entsprechenden Punkt/Wert auf der x-Achse übereinstimmen.

**User Story #8:** Die `data-yvalue` und der entsprechende Punkt sollte mit dem entsprechenden Punkt/Wert auf der y-Achse übereinstimmen.

**User Story #9:** Auf der y-Achse sehe ich mehrere Markierungen mit dem Zeitformat `%M:%S`.

**User Story #10:** Ich sehe mehrere Markierungen auf der x-Achse, die das Jahr anzeigen.

**User Story #11:** Ich kann sehen, dass der Bereich der x-Achsenbeschriftungen innerhalb des Bereichs der tatsächlichen x-Achsen-Daten liegt.

**User Story #12:** Ich kann sehen, dass der Bereich der y-Achsenbeschriftungen innerhalb des Bereichs der tatsächlichen y-Achsen-Daten liegt.

**User Story #13:** Ich kann eine Legende mit beschreibendem Text sehen, die `id="legend"` beinhaltet.

**User Story #14:** Wenn ich mit der Maus über einen Bereich fahre, wird ein Tooltip mit einem entsprechenden `id="tooltip"` angezeigt, der weitere Informationen über den Bereich enthält.

**User Story #15:** Mein Tooltip sollte eine `data-year`-Eigenschaft haben, die der `data-xvalue` des aktiven Bereichs entspricht.

Hier ist der Datensatz, den du benötigst, um dieses Projekt abzuschließen: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

Du kannst dein Projekt aufbauen, indem du <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">diese CodePen-Vorlage</a> verwendest und auf `Save` klickst, um deinen eigenen Pen zu erstellen. Oder du kannst diesen CDN-Link verwenden, um die Tests in jeder beliebigen Umgebung auszuführen: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

Sobald du fertig bist, übermittle die URL an dein Arbeitsprojekt, wenn alle Tests bestanden sind.

# --solutions--

```js
// solution required
```
