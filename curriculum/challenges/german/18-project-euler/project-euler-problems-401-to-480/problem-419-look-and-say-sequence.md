---
id: 5900f5101000cf542c510022
title: 'Problem 419: Die Conway-Folge'
challengeType: 1
forumTopicId: 302088
dashedName: problem-419-look-and-say-sequence
---

# --description--

Die Conway-Folge geht 1, 11, 21, 1211, 111221, 312211, 13112221, 1113213211, ...

Die Folge beginnt mit 1 und alle anderen Mitglieder werden durch die Beschreibung des vorherigen Mitglieds in aufeinander folgenden Ziffern erhalten.

Es ist hilfreich dies laut zu tun:

1 ist "eine eins" $→ 11$

11 ist 'zwei einsen' $→ 21$

21 ist 'eine zwei und eine eins' $→ 1211$

1211 is 'eine eins, eine zwei und zwei einsen' $→ 111221$

111221 ist 'drei einsen, zwei zweien and eine eins' $→ 312211$

...

Definiere $A(n)$, $B(n)$ und $C(n)$ als eine Nummer aus Einsen, Zweien und Dreien in dem $n$'en Element der Sequenz. Man kann überprüfen, dass $A(40) = 31\\,254$, $B(40) = 20\\,259$ und $C(40) = 11\\,625$ gilt.

Finde $A(n)$, $B(n)$ und $C(n)$ für $n = {10}^{12}$. Gebe deinen Antwort-Modulo $2^{30}$ als String an und trenne deine Werte für $A$, $B$ und $C$ mithilfe eines Kommas. z.B. für $n = 40$ wäre die Antwort `31254,20259,11625`.

# --hints--

`lookAndSaySequence()` sollte einen String zurückgeben.

```js
assert.isString(lookAndSaySequence());
```


`lookAndSaySequence()` sollte den String `998567458,1046245404,43363922` zurückgeben.

```js
assert.strictEqual(lookAndSaySequence(), '998567458,1046245404,43363922');
```

# --seed--

## --seed-contents--

```js
function lookAndSaySequence() {

  return true;
}

lookAndSaySequence();
```

# --solutions--

```js
// solution required
```
