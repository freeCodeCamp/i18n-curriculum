---
id: bd7158d8c442eddfaeb5bd0f
title: Erstelle eine „25 + 5“-Uhr
challengeType: 3
forumTopicId: 301373
dashedName: build-a-25--5-clock
---

# --description--

**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Aufgabe:** Entwickle eine App, die in ihrer Funktionalität ähnlich ist wie diese: <a href="https://25--5-clock.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://25--5-clock.freecodecamp.rocks</a>.

Erfülle die untenstehenden User Stories und bestehe die Tests. Verwende beliebige Bibliotheken oder APIs, die du benötigst. Gib dem Ganzen deinen persönlichen Stil.

Du kannst eine beliebige Kombination aus HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux und jQuery verwenden, um dieses Projekt abzuschließen. Du solltest ein Frontend-Framework (wie zum Beispiel React) verwenden, da es in diesem Abschnitt um das Lernen von Frontend-Frameworks geht. Zusätzliche, oben nicht aufgeführte, Technologien sind nicht empfohlen und deren Verwendung erfolgt auf eigene Gefahr. Wir erwägen die Unterstützung weiterer Frontend-Frameworks wie Angular und Vue, aber derzeit werden sie noch nicht unterstützt. Wir nehmen gerne Fehlermeldungen an, die den vorgeschlagenen Technologiestack für dieses Projekt verwenden, und versuchen sie zu beheben. Viel Spaß beim Programmieren!

**User Story #1:** Ich kann ein Element mit `id="break-label"` sehen, das einen String enthält (z. B. "Break Length").

**User Story #2:** Ich kann ein Element mit `id="session-label"` sehen, das einen String enthält (z. B. "Sitzungslänge").

**User Story #3:** Ich kann zwei anklickbare Elemente mit entsprechenden IDs sehen: `id="break-decrement"` und `id="session-decrement"`.

**User Story #4:** Ich kann zwei anklickbare Elemente mit entsprechenden IDs sehen: `id="break-increment"` und `id="session-increment"`.

**User Story #5:** Ich kann ein Element mit einer entsprechenden `id="break-length"` sehen, das standardmäßig (beim Laden) einen Wert von 5 anzeigt.

**User Story #6:** Ich kann ein Element mit einer entsprechenden `id="session-length"` sehen, das standardmäßig einen Wert von 25 anzeigt.

**User Story #7:** Ich kann ein Element mit einem entsprechenden `id="timer-label"` sehen, das einen String enthält, der anzeigt, dass eine Sitzung begonnen wurde (z. B. "Sitzung").

**User Story #8:** Ich kann ein Element mit einer entsprechenden `id="time-left"` sehen. HINWEIS: Ob angehalten oder ausgeführt: Der Wert in diesem Feld sollte immer im Format `mm:ss` angezeigt werden (also 25:00).

**User Story #9:** Ich kann ein anklickbares Element mit einer entsprechenden `id="start_stop"` sehen.

**User Story Nr. 10:** Ich kann ein anklickbares Element mit einer entsprechenden `id="reset"` sehen.

**User Story #11:** Wenn ich auf das Element mit der ID `reset` klicke, sollte jeder laufende Timer gestoppt werden, der Wert innerhalb von ` id="break-length"` sollte auf `5` zurückgesetzt werden, der Wert in `id="session-length"` sollte auf 25 zurückgesetzt werden und das Element mit `id="time-left"` sollte auf den Standardwert zurückgesetzt werden.

**User Story #12:** Wenn ich auf das Element mit der ID `break-decrement` klicke, wird der Wert innerhalb von `id="break- length"` um den Wert 1 verringert und ich kann den aktualisierten Wert sehen.

**User Story #13:** Wenn ich auf das Element mit der ID `break-increment` klicke, wird der Wert innerhalb von `id="break- length"` um den Wert 1 erhöht, und ich kann den aktualisierten Wert sehen.

**User Story #14:** Wenn ich auf das Element mit der ID `session-decrement` klicke, wird der Wert in `id="session- length"` um den Wert 1 verringert, und ich kann den aktualisierten Wert sehen.

**User Story #15:** Wenn ich auf das Element mit der ID `session-increment` klicke, wird der Wert in `id="session- length"` um den Wert 1 erhöht, und ich kann den aktualisierten Wert sehen.

**User Story #16:** Ich sollte nicht in der Lage sein, eine Sitzungs- oder Pausenlänge auf &lt;= 0 zu setzen.

**User Story #17:** Ich sollte nicht in der Lage sein, eine Sitzungs- oder Pausenlänge auf > 60 zu setzen.

**User Story #18:** Wenn ich zum ersten Mal auf das Element mit `id="start_stop"` klicke, sollte der Timer mit dem aktuell angezeigten Wert in `id="session-length"` beginnen, auch wenn der Wert gegenüber dem ursprünglichen Wert von 25 erhöht oder verringert wurde.

**User Story #19:** Wenn der Timer läuft, sollte das Element mit der ID `time-left` die verbleibende Zeit im `mm:ss`-Format anzeigen (Verminderung um einen Wert von 1 und Aktualisierung der Anzeige alle 1000ms).

**User Story #20:** Wenn der Timer läuft und ich auf das Element mit `id="start_stop"` klicke, sollte der Countdown pausieren.

**User Story #21:** Wenn der Timer pausiert ist und ich auf das Element mit `id="start_stop"` klicke, sollte der Countdown ab dem Punkt weiterlaufen, an dem er pausiert wurde.

**User Story #22:** Wenn ein Sitzungs-Countdown Null erreicht (HINWEIS: Der Timer MUSS 00:00 erreichen) und ein neuer Countdown beginnt, sollte das Element mit der ID `timer-label` einen String anzeigen, der angibt, dass eine Pause begonnen hat.

**User Story #23:** Wenn ein Sitzungs-Countdown Null erreicht (HINWEIS: Der Timer MUSS 00:00 erreichen), sollte ein neuer Pausen-Countdown beginnen, der vom angezeigten Wert im `id="break-length"`-Element herunterzählt.

**User Story #24:** Wenn ein Pausen-Countdown Null erreicht (HINWEIS: Der Timer MUSS 00:00 erreichen) und ein neuer Countdown beginnt, sollte das Element mit der ID `timer-label` einen String anzeigen, der anzeigt, dass eine Sitzung begonnen hat.

**User Story #25:** Wenn ein Pausen-Countdown Null erreicht (HINWEIS: Der Timer MUSS 00:00 erreichen), sollte ein neuer Sitzungs-Countdown beginnen, der vom aktuell angezeigten Wert im `id="session-length"`-Element herunterzählt.

**User Story #26:** Wenn ein Countdown Null erreicht (HINWEIS: Der Timer MUSS 00:00 erreichen), sollte ein Ton ertönen, der anzeigt, dass die Zeit abgelaufen ist. Dieser sollte ein HTML5-`audio`-Tag verwenden und eine entsprechende `id="beep"` enthalten.

**User Story #27:** Das Audioelement mit `id="beep"` muss 1 Sekunde oder länger sein.

**User Story #28:** Das Audioelement mit der ID `beep` muss aufhören zu ertönen und zum Anfang zurückgespult werden, wenn das Element mit der ID `reset` angeklickt wird.

Du kannst dein Projekt erstellen, <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">indem du diese CodePen-Vorlage</a> verwendest und auf `Save` klickst, um deinen eigenen Pen zu erstellen. If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Sobald du fertig bist, übermittle die URL zu deinem Arbeitsprojekt, bei dem alle Tests bestehen.

# --solutions--

```js
// solution required
```
