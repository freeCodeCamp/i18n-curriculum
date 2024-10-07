---
id: 5900f50b1000cf542c51001d
title: 'Problem 414: Kaprekar-Konstante'
challengeType: 1
forumTopicId: 302083
dashedName: problem-414-kaprekar-constant
---

# --description--

6174 ist eine bemerkenswerte Zahl; wenn wir ihre Ziffern in aufsteigender Reihenfolge sortieren und diese Zahl von der Zahl subtrahieren, die man erhält, wenn man die Ziffern in absteigender Reihenfolge sortiert, erhalten wir $7641 - 1467 = 6174$.

Noch bemerkenswerter ist, dass wir, wenn wir von einer beliebigen vierstelligen Zahl ausgehen und diesen Prozess des Sortierens und Subtrahierens wiederholen, schließlich bei 6174 oder sofort bei 0 landen, wenn alle Ziffern gleich sind.

Dies funktioniert auch mit Zahlen, die weniger als 4 Ziffern haben, wenn wir die Zahl mit führenden Nullen auffüllen, bis wir 4 Ziffern haben.

Z.B. beginnen wir mit der Nummer 0837:

$$\begin{align}   & 8730 - 0378 = 8352 \\\\
  & 8532 - 2358 = 6174 \end{align}$$

6174 wird die Kaprekar-Konstante genannt. Der Prozess des Sortierens und Subtrahierens und des Wiederholens dieses Vorgangs, bis entweder 0 oder die Kaprekar-Konstante erreicht ist, wird als Kaprekar-Routine bezeichnet.

Wir können die Kaprekar-Routine auch für andere Basen und Stellenanzahlen verwenden. Leider ist nicht in allen Fällen gewährleistet, dass eine Kaprekar-Konstante existiert; entweder kann die Routine für einige Eingabezahlen in einem Zyklus enden oder die Konstante, die die Routine erreicht, kann für verschiedene Eingabezahlen unterschiedlich sein. Es kann jedoch gezeigt werden, dass für 5 Ziffern und eine Basis $b = 6t + 3 ≠ 9$ eine Kaprekar-Konstante existiert.

z.B. Basis 15: ${(10, 4, 14, 9, 5)}\_{15}$ Basis 21: $(14, 6, 20, 13, 7)\_{21}$

Definiere $C_b$ als die Kaprekar-Konstante zur Basis $b$ für 5 Stellen. Definiere die Funktion $sb(i)$ als:

- 0 wenn $i = C_b$ oder wenn $i$ zur Basis $b$ geschrieben aus 5 identischen Ziffern besteht
- die Anzahl der Iterationen, die die Kaprekar-Routine in der Basis $b$ benötigt, um $C_b$ zu erreichen, andernfalls

Man beachte, dass wir $sb(i)$ für alle Integer $i &lt; b^5$ definieren können. Wenn $i$ zur Basis $b$ weniger als 5 Ziffern hat, wird die Zahl mit führenden Nullen aufgefüllt, bis sie 5 Ziffern hat, bevor die Kaprekar-Routine angewendet wird.

Definiere $S(b)$ als die Summe von $sb(i)$ für $0 &lt; i &lt; b^5$. z.B. $S(15) = 5\\,274\\,369$ $S(111) = 400\\,668\\,930\\,299$

Finde die Summe von $S(6k + 3)$ für $2 ≤ k ≤ 300$. Gib die letzten 18 Ziffern als Antwort an.

# --hints--

`kaprekarConstant()` sollte `552506775824935500` zurückgeben.

```js
assert.strictEqual(kaprekarConstant(), 552506775824935500);
```

# --seed--

## --seed-contents--

```js
function kaprekarConstant() {

  return true;
}

kaprekarConstant();
```

# --solutions--

```js
// solution required
```
