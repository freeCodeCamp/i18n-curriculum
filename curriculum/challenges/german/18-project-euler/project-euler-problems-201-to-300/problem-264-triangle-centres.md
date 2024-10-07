---
id: 5900f4751000cf542c50ff87
title: 'Problem 264: Dreieckszentren'
challengeType: 1
forumTopicId: 301913
dashedName: problem-264-triangle-centres
---

# --description--

Betrachte alle Dreiecke mit:

- All ihren Scheitelpunkten auf Gitterpunkten.
- Kreismittelpunkt am Ursprung O.
- Orthozentrisches Zentrum im Punkt H(5, 0).

Es gibt neun solcher Dreiecke mit einem $\text{perimeter} ≤ 50$.

Diese sind in aufsteigender Reihenfolge ihres Umfangs aufgelistet und dargestellt:

<table>
  <tbody>
    <tr>
      <td>
A(-4, 3), B(5, 0), C(4, -3)<br>
A(4, 3), B(5, 0), C(-4, -3)<br>
A(-3, 4), B(5, 0), C(3, -4)<br>
<br><br>
A(3, 4), B(5, 0), C(-3, -4)<br>
A(0, 5), B(5, 0), C(0, -5)<br>
A(1, 8), B(8, -1), C(-4, -7)<br>
<br><br>
A(8, 1), B(1, -8), C(-4, 7)<br>
A(2, 9), B(9, -2), C(-6, -7)<br>
A(9, 2), B(2, -9), C(-6, 7)<br>
      </td>
      <td><img alt="neun Dreiecke ABC mit Umfängen ≤ 50" src="https://cdn.freecodecamp.org/curriculum/project-euler/triangle-centres.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto;"></td>
    </tr>
  </tbody>
</table>

Die Summe ihrer Umfänge, auf vier Dezimalstellen gerundet, beträgt 291,0089.

Finde alle solchen Dreiecke mit einem $\text{perimeter} ≤ {10}^5$. Gib als Antwort die Summe deiner Umfänge auf vier Dezimalstellen gerundet an.

# --hints--

`triangleCentres()` sollte `2816417.1055` zurückgeben.

```js
assert.strictEqual(triangleCentres(), 2816417.1055);
```

# --seed--

## --seed-contents--

```js
function triangleCentres() {

  return true;
}

triangleCentres();
```

# --solutions--

```js
// solution required
```
