---
id: bd7154d8c242eddfaeb5bd13
title: Das Spiel des Lebens bauen
challengeType: 3
forumTopicId: 302362
dashedName: build-the-game-of-life
---

# --description--

**Ziel:** Bauen Sie eine App, die funktional ähnlich ist wie diese: <a href="https://codepen.io/freeCodeCamp/full/BpwMZv/" target="_blank" rel="noopener noreferrer nofollow">https://codepen.io/freeCodeCamp/full/BpwMZv/</a>.

Das Spiel des Lebens ist ein zellulärer Automat, der vom britischen Mathematiker John Horton Conway entwickelt wurde. Es ist ein <em>Null-Spieler-Spiel</em>, was bedeutet, dass seine Entwicklung durch den Anfangszustand bestimmt wird und keine weitere Eingabe erfordert. Man interagiert mit dem Spiel des Lebens, indem man eine Anfangskonfiguration erstellt und beobachtet, wie sie sich entwickelt.

Das Universum des Spiels des Lebens ist ein unendliches, zweidimensionales orthogonales Raster aus quadratischen Zellen, von denen jede sich in einem von zwei möglichen Zuständen befindet: bewohnt oder unbewohnt. Jede Zelle interagiert mit ihren acht Nachbarn, das sind die Zellen, die horizontal, vertikal oder diagonal angrenzen.

Bei jedem Zeitschritt treten folgende Übergänge auf:

- Jede lebende Zelle mit weniger als zwei lebenden Nachbarn stirbt, als ob sie unterbevölkert wäre.
- Jede lebende Zelle mit zwei oder drei lebenden Nachbarn lebt in die nächste Generation weiter.
- Jede lebende Zelle mit mehr als drei lebenden Nachbarn stirbt, als ob sie überbevölkert wäre.
- Jede tote Zelle mit genau drei lebenden Nachbarn wird zu einer lebenden Zelle, als ob sie sich reproduziert hätte.

Erfüllen Sie die folgenden User Stories und bringen Sie alle Tests zum Bestehen. Verwenden Sie beliebige Bibliotheken oder APIs, die Sie benötigen. Verleihen Sie dem Projekt Ihren eigenen Stil.

**User Story:** Wenn ich das Spiel zum ersten Mal öffne, wird es zufällig ein Spielfeld generieren und mit dem Spiel beginnen.

**User Story:** Ich kann das Spielfeld starten und stoppen.

**User Story:** Ich kann das Spielfeld einrichten.

**User Story:** Ich kann das Spielfeld löschen.

**User Story:** Wenn ich auf Start drücke, läuft das Spiel ab.

**User Story:** Jedes Mal, wenn sich das Spielfeld ändert, kann ich sehen, wie viele Generationen vergangen sind.

Wenn Sie fertig sind, fügen Sie einen Link zu Ihrem Projekt hinzu und klicken Sie auf die Schaltfläche „Ich habe diese Aufgabe abgeschlossen“.

Sie können Feedback zu Ihrem Projekt erhalten, indem Sie es im <a href="https://forum.freecodecamp.org/c/project-feedback/409" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp-Forum</a> teilen.

# --solutions--

```js
// solution required
```
