---
id: 587d7dbc367417b2b2512bae
title: Baue eine Dum Machine
challengeType: 3
forumTopicId: 301370
dashedName: build-a-drum-machine
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Aufgabe:** Erstelle eine Anwendung, die eine ähnliche Funktionalität wie <a href="https://drum-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://drum-machine.freecodecamp.rocks/</a> aufweist.

Erfülle die untenstehenden User Stories und bestehe die Tests. Verwende beliebige Bibliotheken oder APIs, die du benötigst. Gib dem Ganzen deinen persönlichen Stil.

Du kannst eine beliebige Kombination aus HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux und jQuery verwenden, um dieses Projekt abzuschließen. Du solltest ein Frontend-Framework (wie zum Beispiel React) verwenden, da es in diesem Abschnitt um das Lernen von Frontend-Frameworks geht. Zusätzliche, oben nicht aufgeführte, Technologien sind nicht empfohlen und deren Verwendung erfolgt auf eigene Gefahr. Wir erwägen die Unterstützung weiterer Frontend-Frameworks wie Angular und Vue, aber derzeit werden sie noch nicht unterstützt. Wir nehmen gerne Fehlermeldungen an, die den vorgeschlagenen Technologiestack für dieses Projekt verwenden, und versuchen sie zu beheben. Viel Spaß beim Programmieren!

**User Story #1:** Ich sollte einen äußeren Container mit einer zugehörigen `id="drum-machine"` sehen, der alle anderen Elemente enthält.

**User Story #2:** Innerhalb `#drum-machine` sehe ich ein Element mit einer entsprechenden `id="display"`.

**User Story #3:** Innerhalb `#drum-machine` sehe ich 9 klickbare Drum-Pad-Elemente, jedes mit einem Klassennamen `drum-pad`, einer eindeutigen ID, die den Audio-Clip beschreibt, den das Drum-Pad auslösen soll, und einem inneren Text, der einer der folgenden Tasten auf der Tastatur entspricht: `Q`, `W`, `E`, `A`, `S`, `D`, `Z`, `X`, `C`. Die Drum Pads MÜSSEN in dieser Reihenfolge angeordnet sein.

**User Story #4:** Innerhalb von jedem `.drum-pad` sollte es ein HTML5-`audio`-Element, das ein `src`-Attribut enthält, welches auf einen Audio-Clip hinweist, einen Klassennamen `clip` und eine ID geben, die dem inneren Text seines übergeordneten Elements `.drum-pad` entspricht (zum Beispiel: `id="Q"`, `id="W"`, `id="E"` etc.).

**User Story#5:** Wenn ich auf ein `.drum-pad`-Element klicke, sollte der Audio-Clip, der in seinem untergeordneten `audio`-Element enthalten ist, ausgelöst werden.

**User Story #6:** Wenn ich auf die Taste zum Auslösen drücke, die mit dem jeweiligen `.drum-pad` verbunden ist, sollte der Audio-Clip, der in seinem untergeordneten `audio`-Element enthalten ist, ausgelöst werden (z. B. sollte das Drücken der `Q`-Taste das Drum-Pad auslösen, das den String `Q` enthält, das Drücken der `W`-Taste sollte das Drum-Pad auslösen, das den String `W` enthält, usw.).

**User Story #7:** Wenn ein `.drum-pad` ausgelöst wird, wird ein String, der den zugehörigen Audio-Clip beschreibt, als innerer Text des `#display`-Elements angezeigt (jeder String muss eindeutig sein).

Hier sind einige Audio-Beispiele, die du für deine Schlagzeug-Maschine verwenden kannst:

- [Heater 1](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-1.mp3)
- [Heater 2](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-2.mp3)
- [Heater 3](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-3.mp3)
- [Heater 4](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-4_1.mp3)
- [Clap](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-6.mp3)
- [Offene Hi-Hat](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Dsc_Oh.mp3)
- [Kick-n'-Hat](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Kick_n_Hat.mp3)
- [Kick](https://cdn.freecodecamp.org/testable-projects-fcc/audio/RP4_KICK_1.mp3)
- [Geschlossene Hi-Hat](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Cev_H2.mp3)

Du kannst dein Projekt erstellen, <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">indem du diese CodePen-Vorlage</a> verwendest und auf `Save` klickst, um deinen eigenen Pen zu erstellen. If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Sobald du fertig bist, übermittle die URL zu deinem Arbeitsprojekt, bei dem alle Tests bestehen.

# --solutions--

```js
// solution required
```
