---
id: 5900f4751000cf542c50ff87
title: 'Problem 264: Triangle Centers'
challengeType: 1
forumTopicId: 301913
dashedName: problem-264-triangle-centres
---

# --description--

Considera tutti i triangoli che hanno:

- Tutti i vertici su punti del reticolo.
- Circumcenter at the origin O.
- Orthocenter at the point H(5, 0).

Ci sono nove di questi triangoli che hanno un $\text{perimetro} ≤ 50$.

Elencati e mostrati in ordine crescente del loro perimetro, sono:

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
      <td><img alt="nove triangoli ABC con perimetro ≤ 50" src="https://cdn.freecodecamp.org/curriculum/project-euler/triangle-centres.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto;"></td>
    </tr>
  </tbody>
</table>

La somma dei loro perimetri, arrotondata al quarto decimale, è di 291.0089.

Trova tutti questi triangoli con un $\text{perimetro} ≤ {10}^5$. Inserisci come risposta la somma dei loro perimetri arrotondata a quattro decimali.

# --hints--

`triangleCenters()` should return `2816417.1055`.

```js
assert.strictEqual(triangleCenters(), 2816417.1055);
```

# --seed--

## --seed-contents--

```js
function triangleCenters() {

  return true;
}

triangleCenters();
```

# --solutions--

```js
// solution required
```
