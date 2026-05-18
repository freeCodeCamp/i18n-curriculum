---
id: bd7178d8c242eddfaeb5bd13
title: Daten mit einem Streudiagramm visualisieren
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**Ziel:** Erstellen Sie eine App, die funktional ähnlich ist wie diese: <a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>.

Erfüllen Sie die untenstehenden User Stories und bestehen Sie alle Tests. Verwenden Sie beliebige Bibliotheken oder APIs, die Sie benötigen. Verleihen Sie ihr Ihren eigenen Stil.

Sie können HTML, JavaScript, CSS und die D3 SVG-basierte Visualisierungsbibliothek verwenden. Die Tests erfordern, dass Achsen mit der D3-Achsen-Eigenschaft generiert werden, die automatisch Ticks entlang der Achse erzeugt. Diese Ticks sind für das Bestehen der D3-Tests erforderlich, da ihre Positionen zur Bestimmung der Ausrichtung der dargestellten Elemente verwendet werden. Informationen zur Achsenerstellung finden Sie unter <https://d3js.org/d3-axis>. Die erforderlichen DOM-Elemente werden zum Zeitpunkt jedes Tests abgefragt. Wenn Sie ein Frontend-Framework (wie zum Beispiel Vue) verwenden, können die Testergebnisse für dynamische Inhalte ungenau sein. Wir hoffen, diese in Zukunft zu unterstützen, aber derzeit werden diese Frameworks für D3-Projekte nicht unterstützt.

**User Story #1:** Ich kann ein Titel-Element sehen, das eine entsprechende `id="title"` hat.

**User Story #2:** Ich kann eine x-Achse sehen, die eine entsprechende `id="x-axis"` hat.

**User Story #3:** Ich kann eine y-Achse sehen, die eine entsprechende `id="y-axis"` hat.

**User Story #4:** Ich kann Punkte sehen, die jeweils eine Klasse `dot` haben und die dargestellten Daten repräsentieren.

**User Story #5:** Jeder Punkt sollte die Eigenschaften `data-xvalue` und `data-yvalue` enthalten, die ihre entsprechenden `x` und `y` Werte enthalten.

**User Story #6:** Die `data-xvalue` und `data-yvalue` jedes Punktes sollten innerhalb des Bereichs der tatsächlichen Daten und im korrekten Datenformat sein. Für `data-xvalue` sind ganze Zahlen (volle Jahre) oder `Date` Objekte für die Testauswertung akzeptabel. Für `data-yvalue` (Minuten) verwenden Sie `Date` Objekte.

**User Story #7:** Die `data-xvalue` und der entsprechende Punkt sollten mit dem entsprechenden Punkt/Wert auf der x-Achse ausgerichtet sein.

**User Story #8:** Die `data-yvalue` und der entsprechende Punkt sollten mit dem entsprechenden Punkt/Wert auf der y-Achse ausgerichtet sein.

**User Story #9:** Ich kann mehrere Tick-Bezeichnungen auf der y-Achse mit `%M:%S` Zeitformat sehen.

**User Story #10:** Ich kann mehrere Tick-Bezeichnungen auf der x-Achse sehen, die das Jahr anzeigen.

**User Story #11:** Ich kann sehen, dass der Bereich der x-Achsen-Beschriftungen innerhalb des Bereichs der tatsächlichen x-Achsen-Daten liegt.

**User Story #12:** Ich kann sehen, dass der Bereich der y-Achsen-Beschriftungen innerhalb des Bereichs der tatsächlichen y-Achsen-Daten liegt.

**User Story #13:** Ich kann eine Legende mit beschreibendem Text sehen, die `id="legend"` enthält.

**User Story #14:** Ich kann mit der Maus über einen Bereich fahren und einen Tooltip mit einer entsprechenden `id="tooltip"` sehen, der weitere Informationen über den Bereich anzeigt.

**User Story #15:** Mein Tooltip sollte eine `data-year` Eigenschaft haben, die der `data-xvalue` des aktiven Bereichs entspricht.

Hier ist der Datensatz, den Sie für dieses Projekt benötigen: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

Sie können Ihr Projekt erstellen, indem Sie <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">diese CodePen-Vorlage verwenden</a> und auf `Save` klicken, um Ihren eigenen Pen zu erstellen. Oder Sie können diesen CDN-Link verwenden, um die Tests in jeder Umgebung auszuführen, die Sie möchten: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

Wenn Sie fertig sind, senden Sie die URL Ihres funktionierenden Projekts mit allen bestandenen Tests ein.

# --solutions--

```js
// solution required
```
