---
id: bd7168d8c242eddfaeb5bd13
title: Daten mit einem Balkendiagramm visualisieren
challengeType: 3
forumTopicId: 301464
dashedName: visualize-data-with-a-bar-chart
---

# --description--

**Ziel:** Erstellen Sie eine App, die funktional ähnlich ist wie diese: <a href="https://bar-chart.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://bar-chart.freecodecamp.rocks</a>.

Erfüllen Sie die untenstehenden User Stories und bestehen Sie alle Tests. Verwenden Sie beliebige Bibliotheken oder APIs, die Sie benötigen. Verleihen Sie der App Ihren eigenen Stil.

Sie können HTML, JavaScript, CSS und die D3 svg-basierte Visualisierungsbibliothek verwenden. Die Tests erfordern, dass Achsen mit der D3-Achsen-Eigenschaft generiert werden, die automatisch Ticks entlang der Achse erzeugt. Diese Ticks sind für das Bestehen der D3-Tests erforderlich, da ihre Positionen zur Bestimmung der Ausrichtung der dargestellten Elemente verwendet werden. Informationen zur Achsenerstellung finden Sie unter <https://d3js.org/d3-axis>. Die erforderlichen DOM-Elemente werden zum Zeitpunkt jedes Tests abgefragt. Wenn Sie ein Frontend-Framework (wie zum Beispiel Vue) verwenden, können die Testergebnisse für dynamische Inhalte ungenau sein. Wir hoffen, diese in Zukunft zu unterstützen, aber derzeit werden diese Frameworks für D3-Projekte nicht unterstützt.

**User Story #1:** Mein Diagramm sollte einen Titel mit einer entsprechenden `id="title"` haben.

**User Story #2:** Mein Diagramm sollte eine `g`-Element x-Achse mit einer entsprechenden `id="x-axis"` haben.

**User Story #3:** Mein Diagramm sollte eine `g`-Element y-Achse mit einer entsprechenden `id="y-axis"` haben.

**User Story #4:** Beide Achsen sollten mehrere Tick-Bezeichnungen enthalten, jede mit einer entsprechenden `class="tick"`.

**User Story #5:** Mein Diagramm sollte für jeden Datenpunkt ein `rect`-Element mit einer entsprechenden `class="bar"` haben, die die Daten anzeigt.

**User Story #6:** Jedes `.bar` sollte die Eigenschaften `data-date` und `data-gdp` mit `date` und `GDP` Werten haben.

**User Story #7:** Die `.bar`-Elemente sollten `data-date`-Eigenschaften haben, die der Reihenfolge der bereitgestellten Daten entsprechen.

**User Story #8:** Die `.bar`-Elemente sollten `data-gdp`-Eigenschaften haben, die der Reihenfolge der bereitgestellten Daten entsprechen.

**User Story #9:** Die Höhe jedes `.bar`-Elements sollte die entsprechende `GDP` der Daten genau darstellen.

**User Story #10:** Das `data-date`-Attribut und das entsprechende `.bar`-Element sollten mit dem entsprechenden Wert auf der x-Achse ausgerichtet sein.

**User Story #11:** Das `data-gdp`-Attribut und das entsprechende `.bar`-Element sollten mit dem entsprechenden Wert auf der y-Achse ausgerichtet sein.

**User Story #12:** Ich kann mit der Maus über einen Bereich fahren und einen Tooltip mit einer entsprechenden `id="tooltip"` sehen, der weitere Informationen über den Bereich anzeigt.

**User Story #13:** Mein Tooltip sollte eine `data-date`-Eigenschaft haben, die der `data-date` des aktiven Bereichs entspricht.

Hier ist der Datensatz, den Sie für dieses Projekt benötigen: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/GDP-data.json`

Sie können Ihr Projekt erstellen, indem Sie <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">diese CodePen-Vorlage verwenden</a> und auf `Save` klicken, um Ihren eigenen Pen zu erstellen. Oder Sie können diesen CDN-Link verwenden, um die Tests in jeder beliebigen Umgebung auszuführen: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`.

Wenn Sie fertig sind, senden Sie die URL Ihres funktionierenden Projekts mit allen bestandenen Tests ein.

# --solutions--

```js
// solution required
```
