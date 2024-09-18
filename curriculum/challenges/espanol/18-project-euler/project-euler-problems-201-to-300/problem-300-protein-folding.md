---
id: 5900f49a1000cf542c50ffac
title: 'Problema 300: Plegamiento de proteínas'
challengeType: 1
forumTopicId: 301954
dashedName: problem-300-protein-folding
---

# --description--

En una forma muy simplificada, podemos considerar las proteínas como cadenas compuestas de elementos hidrofóbicos (H) y polares (P), por ejemplo, HHPPHHHPHHPH.

Para este problema, la orientación de una proteína es importante; por ejemplo, HPP se considera distinto de PPH. Así, hay $2^n$ proteínas distintas que constan de $n$ elementos.

Cuando uno encuentra estas cadenas en la naturaleza, siempre están plegadas de tal manera que el número de puntos de contacto H-H es lo más grande posible, ya que esto es ventajoso energéticamente.

As a result, the H-elements tend to accumulate in the inner part, with the P-elements on the outside.

Natural proteins are folded in three dimensions of course, but we will only consider protein folding in <u>two dimensions</u>.

The figure below shows two possible ways that our example protein could be folded (H-H contact points are shown with red dots).

<img alt="two possible ways to fold example protein" src="https://cdn.freecodecamp.org/curriculum/project-euler/protein-folding.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

The folding on the left has only six H-H contact points, thus it would never occur naturally. On the other hand, the folding on the right has nine H-H contact points, which is optimal for this string.

Assuming that H and P elements are equally likely to occur in any position along the string, the average number of H-H contact points in an optimal folding of a random protein string of length 8 turns out to be $\frac{850}{2^8} = 3.3203125$.

What is the average number of H-H contact points in an optimal folding of a random protein string of length 15? Give your answer using as many decimal places as necessary for an exact result.

# --hints--

`proteinFolding()` should return `8.0540771484375`.

```js
assert.strictEqual(proteinFolding(), 8.0540771484375);
```

# --seed--

## --seed-contents--

```js
function proteinFolding() {

  return true;
}

proteinFolding();
```

# --solutions--

```js
// solution required
```
