---
id: bd7158d8c442eddfaeb5bd17
title: Einen JavaScript-Rechner bauen
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**Hinweis:** **React 18 ist mit den Tests für dieses Projekt bekanntlich nicht kompatibel (siehe [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Ziel:** Bauen Sie eine App, die funktional ähnlich ist wie diese: <a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks/</a>.

Erfüllen Sie die unten stehenden User Stories und bringen Sie alle Tests zum Bestehen. Verwenden Sie beliebige Bibliotheken oder APIs, die Sie benötigen. Verleihen Sie dem Projekt Ihren eigenen Stil.

Sie können jede Kombination aus HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux und jQuery verwenden, um dieses Projekt abzuschließen. Sie sollten ein Frontend-Framework verwenden (zum Beispiel React), da es in diesem Abschnitt um das Lernen von Frontend-Frameworks geht. Weitere Technologien, die nicht oben aufgeführt sind, werden nicht empfohlen und deren Verwendung erfolgt auf eigenes Risiko. Wir planen, weitere Frontend-Frameworks wie Angular und Vue zu unterstützen, aber diese werden derzeit nicht unterstützt. Wir akzeptieren und versuchen, alle Fehlerberichte zu beheben, die den vorgeschlagenen Technologie-Stack für dieses Projekt verwenden. Viel Erfolg beim Programmieren!

**User Story #1:** Mein Rechner sollte ein anklickbares Element enthalten, das ein `=` (Gleichheitszeichen) mit einem entsprechenden `id="equals"` enthält.

**User Story #2:** Mein Rechner sollte 10 anklickbare Elemente enthalten, die jeweils eine Zahl von 0 bis 9 enthalten, mit den folgenden entsprechenden IDs: `id="zero"`, `id="one"`, `id="two"`, `id="three"`, `id="four"`, `id="five"`, `id="six"`, `id="seven"`, `id="eight"` und `id="nine"`.

**User Story #3:** Mein Rechner sollte 4 anklickbare Elemente enthalten, die jeweils einen der 4 grundlegenden mathematischen Operatoren enthalten, mit den folgenden entsprechenden IDs: `id="add"`, `id="subtract"`, `id="multiply"`, `id="divide"`.

**User Story #4:** Mein Rechner sollte ein anklickbares Element enthalten, das ein `.` (Dezimalpunkt) Symbol mit einem entsprechenden `id="decimal"` enthält.

**User Story #5:** Mein Rechner sollte ein anklickbares Element mit einem `id="clear"` enthalten.

**User Story #6:** Mein Rechner sollte ein Element zur Anzeige von Werten enthalten, mit einem entsprechenden `id="display"`.

**User Story #7:** Zu jeder Zeit sollte das Drücken der `clear` Taste die Eingabe- und Ausgabewerte löschen und den Rechner in seinen initialisierten Zustand zurückversetzen; 0 sollte im Element mit der ID `display` angezeigt werden.

**User Story #8:** Während ich Zahlen eingebe, sollte ich meine Eingabe im Element mit der ID `display` sehen können.

**User Story #9:** In beliebiger Reihenfolge sollte ich eine Kette von Zahlen beliebiger Länge addieren, subtrahieren, multiplizieren und dividieren können, und wenn ich `=` drücke, sollte das korrekte Ergebnis im Element mit der ID `display` angezeigt werden.

**User Story #10:** Beim Eingeben von Zahlen sollte mein Rechner nicht erlauben, dass eine Zahl mit mehreren Nullen beginnt.

**User Story #11:** Wenn das Dezimal-Element angeklickt wird, sollte ein `.` an den aktuell angezeigten Wert angehängt werden; zwei `.` in einer Zahl sollten nicht akzeptiert werden.

**User Story #12:** Ich sollte jede Operation (`+`, `-`, `*`, `/`) auf Zahlen mit Dezimalstellen ausführen können.

**User Story #13:** Wenn 2 oder mehr Operatoren hintereinander eingegeben werden, sollte die ausgeführte Operation der zuletzt eingegebene Operator sein (ausgenommen das negative `-` Zeichen). Zum Beispiel, wenn `5 + * 7 =` eingegeben wird, sollte das Ergebnis `35` sein (also `5 * 7`); wenn `5 * - 5 =` eingegeben wird, sollte das Ergebnis `-25` sein (also `5 * (-5)`).

**User Story #14:** Das Drücken eines Operators unmittelbar nach `=` sollte eine neue Berechnung starten, die auf dem Ergebnis der vorherigen Auswertung basiert.

**User Story #15:** Mein Rechner sollte bei Rundungen mehrere Dezimalstellen Genauigkeit haben (beachten Sie, dass es keinen exakten Standard gibt, aber Sie sollten Berechnungen wie `2 / 7` mit angemessener Genauigkeit von mindestens 4 Dezimalstellen handhaben können).

**Hinweis zur Rechnerlogik:** Es gibt zwei Hauptansätze zur Eingabelogik von Rechnern: <dfn>sofortige Ausführungslogik</dfn> und <dfn>Formellogik</dfn>. Unser Beispiel verwendet Formellogik und beachtet die Reihenfolge der Operationen, während die sofortige Ausführung dies nicht tut. Beide sind akzeptabel, aber beachten Sie bitte, dass Ihr Rechner je nach Wahl bei bestimmten Gleichungen andere Ergebnisse als unserer liefern kann (siehe folgendes Beispiel). Solange Ihre Mathematik von einem anderen Produktionsrechner überprüfbar ist, betrachten Sie dies bitte nicht als Bug.

**BEISPIEL:** `3 + 5 x 6 - 2 / 4 =`  

-   **Sofortige Ausführungslogik:** `11.5`
-   **Formel-/Ausdruckslogik:** `32.5`

Sie können Ihr Projekt erstellen, indem Sie <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">diese CodePen-Vorlage verwenden</a> und auf `Save` klicken, um Ihren eigenen Pen zu erstellen. Wenn Sie eine andere Umgebung bevorzugen, fügen Sie diesen `<script>` Tag in den Body Ihrer `index.html` Datei ein: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Wenn Sie fertig sind, senden Sie die URL Ihres funktionierenden Projekts mit allen bestandenen Tests ein.

# --solutions--

```js
// solution required
```
