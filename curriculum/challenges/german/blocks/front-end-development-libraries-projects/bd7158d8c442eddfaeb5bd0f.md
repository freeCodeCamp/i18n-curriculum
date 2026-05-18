---
id: bd7158d8c442eddfaeb5bd0f
title: Baue eine 25 + 5 Uhr
challengeType: 3
forumTopicId: 301373
dashedName: build-a-25--5-clock
---

# --description--

**Hinweis:** **React 18 ist mit den Tests für dieses Projekt bekanntlich nicht kompatibel (siehe [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Ziel:** Erstellen Sie eine App, die funktional ähnlich ist wie diese: <a href="https://25--5-clock.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://25--5-clock.freecodecamp.rocks</a>.

Erfüllen Sie die untenstehenden User Stories und bringen Sie alle Tests zum Bestehen. Verwenden Sie beliebige Bibliotheken oder APIs, die Sie benötigen. Verleihen Sie ihr Ihren eigenen Stil.

Sie können jede Kombination aus HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux und jQuery verwenden, um dieses Projekt abzuschließen. Sie sollten ein Front-End-Framework verwenden (zum Beispiel React), da es in diesem Abschnitt darum geht, Front-End-Frameworks zu lernen. Weitere Technologien, die nicht oben aufgeführt sind, werden nicht empfohlen und deren Verwendung erfolgt auf eigenes Risiko. Wir planen, weitere Front-End-Frameworks wie Angular und Vue zu unterstützen, aber derzeit sind diese nicht unterstützt. Wir akzeptieren und versuchen, alle Fehlerberichte zu beheben, die den vorgeschlagenen Technologie-Stack für dieses Projekt verwenden. Viel Spaß beim Programmieren!

**User Story #1:** Ich kann ein Element mit `id="break-label"` sehen, das einen String enthält (z. B. „Break Length“).

**User Story #2:** Ich kann ein Element mit `id="session-label"` sehen, das einen String enthält (z. B. „Session Length“).

**User Story #3:** Ich kann zwei anklickbare Elemente mit den entsprechenden IDs `id="break-decrement"` und `id="session-decrement"` sehen.

**User Story #4:** Ich kann zwei anklickbare Elemente mit den entsprechenden IDs `id="break-increment"` und `id="session-increment"` sehen.

**User Story #5:** Ich kann ein Element mit dem entsprechenden `id="break-length"` sehen, das standardmäßig (beim Laden) einen Wert von 5 anzeigt.

**User Story #6:** Ich kann ein Element mit dem entsprechenden `id="session-length"` sehen, das standardmäßig einen Wert von 25 anzeigt.

**User Story #7:** Ich kann ein Element mit dem entsprechenden `id="timer-label"` sehen, das einen String enthält, der anzeigt, dass eine Sitzung gestartet wurde (z. B. „Session“).

**User Story #8:** Ich kann ein Element mit dem entsprechenden `id="time-left"` sehen. HINWEIS: Ob pausiert oder laufend, der Wert in diesem Feld sollte immer im `mm:ss`-Format angezeigt werden (z. B. 25:00).

**User Story #9:** Ich kann ein anklickbares Element mit dem entsprechenden `id="start_stop"` sehen.

**User Story #10:** Ich kann ein anklickbares Element mit dem entsprechenden `id="reset"` sehen.

**User Story #11:** Wenn ich auf das Element mit der ID `reset` klicke, sollte jeder laufende Timer gestoppt werden, der Wert in `id="break-length"` sollte auf `5` zurückgesetzt werden, der Wert in `id="session-length"` sollte auf 25 zurückgesetzt werden, und das Element mit `id="time-left"` sollte in seinen Standardzustand zurückgesetzt werden.

**User Story #12:** Wenn ich auf das Element mit der ID `break-decrement` klicke, wird der Wert in `id="break-length"` um 1 verringert, und ich kann den aktualisierten Wert sehen.

**User Story #13:** Wenn ich auf das Element mit der ID `break-increment` klicke, wird der Wert in `id="break-length"` um 1 erhöht, und ich kann den aktualisierten Wert sehen.

**User Story #14:** Wenn ich auf das Element mit der ID `session-decrement` klicke, wird der Wert in `id="session-length"` um 1 verringert, und ich kann den aktualisierten Wert sehen.

**User Story #15:** Wenn ich auf das Element mit der ID `session-increment` klicke, wird der Wert in `id="session-length"` um 1 erhöht, und ich kann den aktualisierten Wert sehen.

**User Story #16:** Ich sollte keine Sitzungs- oder Pausenlänge auf ≤ 0 einstellen können.

**User Story #17:** Ich sollte keine Sitzungs- oder Pausenlänge auf > 60 einstellen können.

**User Story #18:** Wenn ich zum ersten Mal auf das Element mit `id="start_stop"` klicke, sollte der Timer vom aktuell in `id="session-length"` angezeigten Wert aus starten, auch wenn der Wert vom ursprünglichen Wert 25 erhöht oder verringert wurde.

**User Story #19:** Wenn der Timer läuft, sollte das Element mit der ID `time-left` die verbleibende Zeit im `mm:ss`-Format anzeigen (jede Sekunde um 1 verringert und die Anzeige aktualisiert).

**User Story #20:** Wenn der Timer läuft und ich auf das Element mit `id="start_stop"` klicke, sollte der Countdown pausieren.

**User Story #21:** Wenn der Timer pausiert ist und ich auf das Element mit `id="start_stop"` klicke, sollte der Countdown an der Stelle fortgesetzt werden, an der er pausiert wurde.

**User Story #22:** Wenn ein Sitzungs-Countdown null erreicht (HINWEIS: Timer MUSS 00:00 erreichen) und ein neuer Countdown beginnt, sollte das Element mit der ID `timer-label` einen String anzeigen, der anzeigt, dass eine Pause begonnen hat.

**User Story #23:** Wenn ein Sitzungs-Countdown null erreicht (HINWEIS: Timer MUSS 00:00 erreichen), sollte ein neuer Pausen-Countdown beginnen, der vom aktuell im Element `id="break-length"` angezeigten Wert herunterzählt.

**User Story #24:** Wenn ein Pausen-Countdown null erreicht (HINWEIS: Timer MUSS 00:00 erreichen) und ein neuer Countdown beginnt, sollte das Element mit der ID `timer-label` einen String anzeigen, der anzeigt, dass eine Sitzung begonnen hat.

**User Story #25:** Wenn ein Pausen-Countdown null erreicht (HINWEIS: Timer MUSS 00:00 erreichen), sollte ein neuer Sitzungs-Countdown beginnen, der vom aktuell im Element `id="session-length"` angezeigten Wert herunterzählt.

**User Story #26:** Wenn ein Countdown null erreicht (HINWEIS: Timer MUSS 00:00 erreichen), sollte ein Ton abgespielt werden, der anzeigt, dass die Zeit abgelaufen ist. Dies sollte ein HTML5 `audio`-Tag verwenden und einen entsprechenden `id="beep"` haben.

**User Story #27:** Das Audioelement mit `id="beep"` muss 1 Sekunde oder länger sein.

**User Story #28:** Das Audioelement mit der ID `beep` muss aufhören zu spielen und zum Anfang zurückgespult werden, wenn das Element mit der ID `reset` angeklickt wird.

Sie können Ihr Projekt erstellen, indem Sie <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">diese CodePen-Vorlage verwenden</a> und auf `Save` klicken, um Ihren eigenen Pen zu erstellen. Wenn Sie eine andere Umgebung bevorzugen, fügen Sie diesen `<script>`-Tag in den Body Ihrer `index.html`-Datei ein: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Wenn Sie fertig sind, senden Sie die URL zu Ihrem funktionierenden Projekt mit allen bestandenen Tests ein.

# --solutions--

```js
// solution required
```
