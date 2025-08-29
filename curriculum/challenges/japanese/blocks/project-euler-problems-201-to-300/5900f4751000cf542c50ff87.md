---
id: 5900f4751000cf542c50ff87
title: 'Problem 264: Triangle Centers'
challengeType: 1
forumTopicId: 301913
dashedName: problem-264-triangle-centres
---

# --description--

以下が当てはまるすべての三角形について考えてます。

- すべての頂点が格子点上にある。
- Circumcenter at the origin O.
- Orthocenter at the point H(5, 0).

$\text{周長} ≤ 50$ に対してこのような三角形は 9 つあります。

それらを下表に周長の昇順で示します。

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
      <td><img alt="周長が 50 以下の 9 つの三角形 ABC" src="https://cdn.freecodecamp.org/curriculum/project-euler/triangle-centres.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto;"></td>
    </tr>
  </tbody>
</table>

これらの周長の和を小数第 4 位に四捨五入すると 291.0089 です。

$\text{周長} ≤ {10}^5$ を満たすこのような三角形をすべて求めなさい。 回答は、これらの三角形の周長の和を四捨五入して小数第 4 位まで示すこと。

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
