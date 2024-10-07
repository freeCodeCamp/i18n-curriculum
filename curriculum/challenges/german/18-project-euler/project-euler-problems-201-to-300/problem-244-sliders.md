---
id: 5900f4601000cf542c50ff72
title: 'Problem 244: Schieber'
challengeType: 1
forumTopicId: 301891
dashedName: problem-244-sliders
---

# --description--

Du kennst vermutlich das 15-Puzzle-Spiel. Statt nummerierter Fliesen haben wir hier sieben rote Fliesen und acht blaue Fliesen.

Ein Zug wird durch den Großbuchstaben der Richtung (Links, Rechts, Oben, Unten) gekennzeichnet, in der die Kachel verschoben ist, z.B. Ausgehend von der Konfiguration ($S$) erreichen wir durch die Sequenz $LULUR$ die Konfiguration ($E$):

($S$) <img alt="configuration S" src="https://cdn.freecodecamp.org/curriculum/project-euler/sliders-1.gif" style="display: inline-block; background-color: white; padding: 10px;" />, ($E$) <img alt="Konfiguration E" src="https://cdn.freecodecamp.org/curriculum/project-euler/sliders-2.gif" style="display: inline-block; background-color: white; padding: 10px;" />

Für jeden Pfad wird seine Prüfsumme berechnet durch (Pseudocode):

$$\begin{align}   & \text{checksum} = 0 \\\\
  & \text{checksum} = (\text{checksum} × 243 + m_1) \\; \text{mod} \\; 100\\,000\\,007 \\\\   & \text{checksum} = (\text{checksum} × 243 + m_2) \\; \text{mod} \\; 100\\,000\\,007 \\\\
  & \ldots \\\\ & \text{checksum} = (\text{checksum} × 243 + m_n) \\; \text{mod} \\; 100\\,000\\,007 \end{align}$$

wo $m_k$ der ASCII-Wert des $k^{\text{th}}$ Buchstabens ist in der Bewegungssequenz und die ASCII-Werte für die Züge sind:

$$\begin{array}{|c|c|} \hline L & 76 \\\\ \hline R & 82 \\\\ \hline U & 85 \\\\ \hline D & 68 \\\\ \hline \end{array}$$

Für die oben angegebene Sequenz $LULUR$ wäre die Prüfsumme 19761398. Finde nun, ausgehend von der Konfiguration ($S$), alle kürzesten Wege zur Konfiguration ($T$).

($S$) <img alt="configuration S" src="https://cdn.freecodecamp.org/curriculum/project-euler/sliders-3.gif" style="display: inline-block; background-color: white; padding: 10px;" />, ($T$) <img alt="Konfiguration T" src="https://cdn.freecodecamp.org/curriculum/project-euler/sliders-4.gif" style="display: inline-block; background-color: white; padding: 10px;" />

Wie hoch ist die Summe aller Prüfsummen für die Pfade mit der minimalen Länge?

# --hints--

`sliders()` sollte `96356848` zurückgeben.

```js
assert.strictEqual(sliders(), 96356848);
```

# --seed--

## --seed-contents--

```js
function sliders() {

  return true;
}

sliders();
```

# --solutions--

```js
// solution required
```
