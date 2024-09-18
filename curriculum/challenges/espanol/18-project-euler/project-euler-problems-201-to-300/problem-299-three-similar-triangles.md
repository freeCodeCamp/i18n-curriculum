---
id: 5900f4971000cf542c50ffaa
title: 'Problem 299: Three similar triangles'
challengeType: 1
forumTopicId: 301951
dashedName: problem-299-three-similar-triangles
---

# --description--

Four points with integer coordinates are selected:

$A(a, 0)$, $B(b, 0)$, $C(0, c)$ and $D(0, d)$, with $0 &lt; a &lt; b$ and $0 &lt; c &lt; d$.

Point $P$, also with integer coordinates, is chosen on the line $AC$ so that the three triangles $ABP$, $CDP$ and $BDP$ are all similar.

<img alt="points A, B, C, D and P creating three triangles: ABP, CDP, and BDP" src="https://cdn.freecodecamp.org/curriculum/project-euler/three-similar-triangles.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

It is easy to prove that the three triangles can be similar, only if $a = c$.

So, given that $a = c$, we are looking for triplets ($a$, $b$, $d$) such that at least one point $P$ (with integer coordinates) exists on $AC$, making the three triangles $ABP$, $CDP$ and $BDP$ all similar.

Por ejemplo, si $(a, b, d) = (2, 3, 4)$, se puede verificar fácilmente que el punto $P(1, 1)$ satisface la condición anterior. Observa que los tríos (2,3,4) y (2,4,3) se consideran distintos, aunque el punto $P(1, 1)$ es común para ambos.

Si $b + d &lt; 100$, hay 92 tripletas distintas ($a$, $b$, $d$) tales que el punto $P$ existe.

Si $b + d &lt; 100\\,000$, hay 320471 tripletas distintas ($a$, $b$, $d$) tales que el punto $P$ existe.

Si $b + d &lt; 100\\,000\\,000$, ¿cuántas tripletas distintas ($a$, $b$, $d$) hay tales que el punto $P$ existe?

# --hints--

`threeSimilarTriangles()` debe volver `549936643`.

```js
assert.strictEqual(threeSimilarTriangles(), 549936643);
```

# --seed--

## --seed-contents--

```js
function threeSimilarTriangles() {

  return true;
}

threeSimilarTriangles();
```

# --solutions--

```js
// solution required
```
