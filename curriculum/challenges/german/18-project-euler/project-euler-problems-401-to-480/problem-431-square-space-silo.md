---
id: 5900f51b1000cf542c51002e
title: 'Problem 431: Quadratischer Silo-Platz'
challengeType: 1
forumTopicId: 302102
dashedName: problem-431-square-space-silo
---

# --description--

Fred, der Landwirt, lässt auf seinem Hof ein neues Lagersilo errichten, und da er von allem, was quadratisch ist, besessen ist, ist er völlig am Boden zerstört, als er entdeckt, dass es rund ist. Quentin, der Vertreter der Firma, die das Silo installiert hat, erklärt, dass sie nur zylindrische Silos herstellen, aber er weist darauf hin, dass das Silo auf einem quadratischen Sockel steht. Fred ist darüber nicht erfreut und besteht darauf, dass es von seinem Grundstück entfernt wird.

Der schnell denkende Quentin erklärt, dass sich bei der Anlieferung von körnigem Material von oben ein konisches Gefälle bildet und der natürliche Winkel zur Horizontalen als Schüttwinkel bezeichnet wird. For example if the angle of repose, $\alpha = 30°$, and grain is delivered at the center of the silo then a perfect cone will form towards the top of the cylinder. Im Falle dieses Silos, das einen Durchmesser von 6 m hat, würde der Raumverlust etwa 32,648388556 m<sup>3</sup> betragen. However, if grain is delivered at a point on the top which has a horizontal distance of $x$ metres from the center then a cone with a strangely curved and sloping base is formed. Er zeigt Fred ein Bild.

<img alt="Bild, das die Bildung des perfekten Kegels zum oberen Ende des Zylinders hin zeigt" src="https://cdn.freecodecamp.org/curriculum/project-euler/square-space-silo.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Die Menge des verschwendeten Raums in Kubikmetern soll mit $V(x)$ angegeben werden. Wenn $x = 1,114\\,785\,284$ ist, was zufällig drei Nachkommastellen zum Quadrat hat, dann ist der verschwendete Platz $V(1,114\\,785\,284) \ca. 36$. Angesichts der Bandbreite möglicher Lösungen für dieses Problem gibt es genau eine weitere Option: $V(2,511\,167\,869) \ca. 49$. Das wäre so, als wüsste man, dass das Quadrat der König des Silos ist und in voller Pracht auf dem Getreide sitzt.

Freds Augen leuchten vor Freude über diese elegante Lösung, aber bei näherer Betrachtung von Quentins Zeichnungen und Berechnungen schlägt seine Freude wieder in Verzagtheit um. Fred weist Quentin darauf hin, dass der Radius des Silos 6 m beträgt, nicht der Durchmesser, und dass der Schüttwinkel für sein Getreide 40° beträgt. Wenn Quentin jedoch eine Reihe von Lösungen für dieses spezielle Silo finden kann, wird er es gerne behalten.

Wenn der schnell denkende Quentin den frustrierend pingeligen Fred, den Landwirt, mit seinem Appetit auf alles, was quadratisch ist, befriedigen soll, dann bestimme die Werte von $x$ für alle möglichen Optionen der quadratischen Raumverschwendung und berechne $\sum x$ auf 9 Dezimalstellen genau.

# --hints--

`squareSpaceSilo()` sollte `23.386029052` zurückgeben.

```js
assert.strictEqual(squareSpaceSilo(), 23.386029052);
```

# --seed--

## --seed-contents--

```js
function squareSpaceSilo() {

  return true;
}

squareSpaceSilo();
```

# --solutions--

```js
// solution required
```
