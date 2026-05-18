---
id: bd7188d8c242eddfaeb5bd13
title: Daten mit einer Heatmap visualisieren
challengeType: 3
forumTopicId: 301466
dashedName: visualize-data-with-a-heat-map
---

# --description--

**Ziel:** Erstellen Sie eine App, die funktional ähnlich ist wie diese: <a href="https://heat-map.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://heat-map.freecodecamp.rocks</a>.

Erfüllen Sie die untenstehenden User Stories und bestehen Sie alle Tests. Verwenden Sie beliebige Bibliotheken oder APIs, die Sie benötigen. Verleihen Sie ihr Ihren eigenen Stil.

Sie können HTML, JavaScript, CSS und die auf SVG basierende Visualisierungsbibliothek D3 verwenden. Die erforderlichen DOM-Elemente werden zum Zeitpunkt jedes Tests abgefragt. Wenn Sie ein Frontend-Framework (wie zum Beispiel Vue) verwenden, können die Testergebnisse bei dynamischen Inhalten ungenau sein. Wir hoffen, diese in Zukunft zu unterstützen, aber derzeit werden diese Frameworks für D3-Projekte nicht unterstützt.

**User Story #1:** Meine Heatmap sollte einen Titel mit einer entsprechenden `id="title"` haben.

**User Story #2:** Meine Heatmap sollte eine Beschreibung mit einer entsprechenden `id="description"` haben.

**User Story #3:** Meine Heatmap sollte eine x-Achse mit einer entsprechenden `id="x-axis"` haben.

**User Story #4:** Meine Heatmap sollte eine y-Achse mit einer entsprechenden `id="y-axis"` haben.

**User Story #5:** Meine Heatmap sollte `rect`-Elemente mit einer `class="cell"` haben, die die Daten darstellen.

**User Story #6:** Es sollten mindestens 4 verschiedene Füllfarben für die Zellen verwendet werden.

**User Story #7:** Jede Zelle hat die Eigenschaften `data-month`, `data-year`, `data-temp`, die ihre entsprechenden `month`, `year` und `temperature` Werte enthalten.

**User Story #8:** Die `data-month`, `data-year` jeder Zelle sollten innerhalb des Wertebereichs der Daten liegen.

**User Story #9:** Meine Heatmap sollte Zellen haben, die mit dem entsprechenden Monat auf der y-Achse ausgerichtet sind.

**User Story #10:** Meine Heatmap sollte Zellen haben, die mit dem entsprechenden Jahr auf der x-Achse ausgerichtet sind.

**User Story #11:** Meine Heatmap sollte mehrere Tick-Bezeichnungen auf der y-Achse mit dem vollständigen Monatsnamen haben.

**User Story #12:** Meine Heatmap sollte mehrere Tick-Bezeichnungen auf der x-Achse mit den Jahren zwischen 1754 und 2015 haben.

**User Story #13:** Meine Heatmap sollte eine Legende mit einer entsprechenden `id="legend"` haben.

**User Story #14:** Meine Legende sollte `rect`-Elemente enthalten.

**User Story #15:** Die `rect`-Elemente in der Legende sollten mindestens 4 verschiedene Füllfarben verwenden.

**User Story #16:** Ich kann mit der Maus über einen Bereich fahren und einen Tooltip mit einer entsprechenden `id="tooltip"` sehen, der weitere Informationen über den Bereich anzeigt.

**User Story #17:** Mein Tooltip sollte eine `data-year`-Eigenschaft haben, die der `data-year` des aktiven Bereichs entspricht.

Hier ist der Datensatz, den Sie für dieses Projekt benötigen: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/global-temperature.json`

Sie können Ihr Projekt erstellen, indem Sie <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">diese CodePen-Vorlage verwenden</a> und auf `Save` klicken, um Ihren eigenen Pen zu erstellen. Oder Sie können diesen CDN-Link verwenden, um die Tests in jeder Umgebung auszuführen, die Sie möchten: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

Wenn Sie fertig sind, senden Sie die URL Ihres funktionierenden Projekts mit allen bestandenen Tests ein.

# --solutions--

```js
// solution required
```
