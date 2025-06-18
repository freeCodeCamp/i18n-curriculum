---
id: 5900f4621000cf542c50ff75
title: '問題 246: 楕円の接線'
challengeType: 1
forumTopicId: 301893
dashedName: problem-246-tangents-to-an-ellipse
---

# --description--

ある楕円が次のように定義されています。

Given a circle $c$ with center $M$ and radius $r$ and a point $G$ such that $d(G, M) < r$, the locus of the points that are equidistant from $c$ and $G$ form an ellipse.

下図は、点が楕円を描く様子を示しています。

<img alt="楕円の描画アニメーション" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

点 $M(-2000, 1500)$ と $G(8000, 1500)$ が与えられます。

Given is also the circle $c$ with center $M$ and radius $15\\,000$.

$G$ と $c$ から等距離にある点の軌跡が楕円 $e$ を描きます。

$e$ の外側の点 $P$ から、楕円に対する 2 本の接線 $t_1$ と $t_2$ が描かれます。

$t_1$ と $t_2$ が楕円に接する点を $R$, $S$ とします。

<img alt="circle c with the center M, radius 15000, and point P outside of ellipse e; from point P two tangents t_1 and t_2 are drawn to the ellipse, with points touching ellipse are R and S" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

角 $RPS$ が 45 度を超えるような格子点 $P$ はいくつありますか。

# --hints--

`tangentsToAnEllipse()` は `810834388` を返す必要があります。

```js
assert.strictEqual(tangentsToAnEllipse(), 810834388);
```

# --seed--

## --seed-contents--

```js
function tangentsToAnEllipse() {

  return true;
}

tangentsToAnEllipse();
```

# --solutions--

```js
// solution required
```
