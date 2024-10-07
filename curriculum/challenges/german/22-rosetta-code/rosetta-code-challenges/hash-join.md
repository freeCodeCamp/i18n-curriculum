---
id: 5956795bc9e2c415eb244de1
title: Hash-Join
challengeType: 1
forumTopicId: 302284
dashedName: hash-join
---

# --description--

Eine innere Verknüpfung ist ein Vorgang, bei dem zwei Datentabellen auf der Grundlage übereinstimmender Spaltenwerte zu einer einzigen Tabelle kombiniert werden. Die einfachste Art, diesen Vorgang zu implementieren, ist der verschachtelte Schleifen-Join-Algorithmus, aber eine skalierbarere Alternative ist der Hash-Join-Algorithmus.

Der "Hash Join"-Algorithmus besteht aus zwei Schritten:

<ol>
  <li><strong>Hash-Phase:</strong> Erstelle eine Multimap aus einer der beiden Tabellen, die jeden Join-Spaltenwert auf alle Zeilen abbildet, die ihn enthalten.</li>
  <ul>
    <li>Die Multimap muss eine Hash-basierte Suche unterstützen, die besser skaliert als eine einfache lineare Suche, denn das ist der Sinn dieses Algorithmus.</li>
    <li>Idealerweise sollte die Multimap für die kleinere Tabelle erstellt werden, um die Erstellungszeit und die Speichergröße zu minimieren.</li>
  </ul>
  <li><strong>Join-Phase:</strong> Scanne die andere Tabelle und finde übereinstimmende Zeilen in der zuvor erstellten Multimap.</li>
</ol>

Als Pseudocode könnte der Algorithmus wie folgt ausgedrückt werden:

<pre><strong>Sei</strong> <i>A</i> = die erste Eingabetabelle (oder idealerweise die größere Tabelle)
<strong>Sei</strong> <i>B</i> = die zweite Eingabetabelle (oder idealerweise die kleinere Tabelle)
<strong>Sei</strong> <i>j<sub>A</sub></i> = die Join-Spalten-ID der Tabelle  <i>A</i>
<strong>Sei</strong> <i>j<sub>B</sub></i> = die Join-Spalten-ID der Tabelle  <i>B</i>
<strong>Sei</strong> <i>M<sub>B</sub></i> = eine Multimap für die Zuordnung von Einzelwerten auf mehreren Tabellenzeilen <i>B</i> (zu Beginn leer)
<strong>Sei</strong> <i>C</i> =  die Ausgabetabelle (zu Beginn leer)
<strong>Für jede</strong> Zeile <i>b</i> in Tabelle <i>B</i>:
  <strong>Platziere</strong> <i>b</i> im Multimap <i>M<sub>B</sub></i> unter dem Schlüssel <i>b(j<sub>B</sub>)</i>
<strong>Für jede</strong> Zeile <i>a</i> in Tabelle <i>A</i>:
  <strong>Für jede</strong> Zeile <i>b</i> im Multimap <i>M<sub>B</sub></i> unter dem Schlüssel <i>a(j<sub>A</sub>)</i>:
    <strong>Sei</strong> <i>c</i> = die Verkettung von Zeile <i>a</i> und Zeile <i>b</i>
    <strong>Platziere</strong> Zeile <i>c</i> in Tabelle <i>C</i>
</pre>

# --instructions--

Implementiere den "hash join"-Algorithmus als Funktion und zeige, dass er den unten aufgeführten Testfall besteht. Die Funktion sollte zwei Anordnungen mit Objekten akzeptieren und eine Anordnung mit kombinierten Objekten zurückgeben.

**Eingabe**

<table>
  <tr>
    <td style="padding: 4px; margin: 5px;">
      <table style="border:none; border-collapse:collapse;">
        <tr>
          <td style="border:none"><i>A =</i></td>
          <td style="border:none">
            <table>
              <tr>
                <th style="padding: 4px; margin: 5px;">Age</th>
                <th style="padding: 4px; margin: 5px;">Name</th>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">27</td>
                <td style="padding: 4px; margin: 5px;">Jonah</td>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">18</td>
                <td style="padding: 4px; margin: 5px;">Alan</td>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">28</td>
                <td style="padding: 4px; margin: 5px;">Glory</td>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">18</td>
                <td style="padding: 4px; margin: 5px;">Popeye</td>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">28</td>
                <td style="padding: 4px; margin: 5px;">Alan</td>
              </tr>
            </table>
          </td>
          <td style="border:none; padding-left:1.5em;" rowspan="2"></td>
          <td style="border:none"><i>B =</i></td>
          <td style="border:none">
            <table>
              <tr>
                <th style="padding: 4px; margin: 5px;">Character</th>
                <th style="padding: 4px; margin: 5px;">Nemesis</th>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">Jonah</td>
                <td style="padding: 4px; margin: 5px;">Whales</td>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">Jonah</td>
                <td style="padding: 4px; margin: 5px;">Spiders</td>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">Alan</td>
                <td style="padding: 4px; margin: 5px;">Ghosts</td>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">Alan</td>
                <td style="padding: 4px; margin: 5px;">Zombies</td>
              </tr>
              <tr>
                <td style="padding: 4px; margin: 5px;">Glory</td>
                <td style="padding: 4px; margin: 5px;">Buffy</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td style="border:none">
            <i>j<sub>A</sub> =</i>
          </td>
          <td style="border:none">
            <i><code>Name</code> (z.B. Spalte 1)</i>
          </td>
          <td style="border:none">
            <i>j<sub>B</sub> =</i>
          </td>
          <td style="border:none">
            <i><code>Character</code> (z.B. Spalte 0)</i>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

**Output**

| A_age | A_name | B_character | B_nemesis |
| ----- | ------ | ----------- | --------- |
| 27    | Jonah  | Jonah       | Whales    |
| 27    | Jonah  | Jonah       | Spiders   |
| 18    | Alan   | Alan        | Ghosts    |
| 18    | Alan   | Alan        | Zombies   |
| 28    | Glory  | Glory       | Buffy     |
| 28    | Alan   | Alan        | Ghosts    |
| 28    | Alan   | Alan        | Zombies   |

Die Reihenfolge der Zeilen in der Ausgabetabelle ist nicht von Bedeutung.

# --hints--

`hashJoin` sollte eine Funktion sein.

```js
assert(typeof hashJoin === 'function');
```

`hashJoin([{ age: 27, name: "Jonah" }, { age: 18, name: "Alan" }, { age: 28, name: "Glory" }, { age: 18, name: "Popeye" }, { age: 28, name: "Alan" }], [{ character: "Jonah", nemesis: "Whales" }, { character: "Jonah", nemesis: "Spiders" }, { character: "Alan", nemesis: "Ghosts" }, { character:"Alan", nemesis: "Zombies" }, { character: "Glory", nemesis: "Buffy" }, { character: "Bob", nemesis: "foo" }])` sollte `[{"A_age": 27,"A_name": "Jonah", "B_character": "Jonah", "B_nemesis": "Whales"}, {"A_age": 27,"A_name": "Jonah", "B_character": "Jonah", "B_nemesis": "Spiders"}, {"A_age": 18,"A_name": "Alan", "B_character": "Alan", "B_nemesis": "Ghosts"}, {"A_age": 18,"A_name": "Alan", "B_character": "Alan", "B_nemesis": "Zombies"}, {"A_age": 28,"A_name": "Glory", "B_character": "Glory", "B_nemesis": "Buffy"}, {"A_age": 28,"A_name": "Alan", "B_character": "Alan", "B_nemesis": "Ghosts"}, {"A_age": 28,"A_name": "Alan", "B_character": "Alan", "B_nemesis": "Zombies"}]` zurückgeben

```js
assert.deepEqual(hashJoin(hash1, hash2), res);
```

# --seed--

## --after-user-code--

```js
const hash1 = [
    { age: 27, name: 'Jonah' },
    { age: 18, name: 'Alan' },
    { age: 28, name: 'Glory' },
    { age: 18, name: 'Popeye' },
    { age: 28, name: 'Alan' }
];

const hash2 = [
    { character: 'Jonah', nemesis: 'Whales' },
    { character: 'Jonah', nemesis: 'Spiders' },
    { character: 'Alan', nemesis: 'Ghosts' },
    { character: 'Alan', nemesis: 'Zombies' },
    { character: 'Glory', nemesis: 'Buffy' },
    { character: 'Bob', nemesis: 'foo' }
];

const res = [
    { A_age: 27, A_name: 'Jonah', B_character: 'Jonah', B_nemesis: 'Whales' },
    { A_age: 27, A_name: 'Jonah', B_character: 'Jonah', B_nemesis: 'Spiders' },
    { A_age: 18, A_name: 'Alan', B_character: 'Alan', B_nemesis: 'Ghosts' },
    { A_age: 18, A_name: 'Alan', B_character: 'Alan', B_nemesis: 'Zombies' },
    { A_age: 28, A_name: 'Glory', B_character: 'Glory', B_nemesis: 'Buffy' },
    { A_age: 28, A_name: 'Alan', B_character: 'Alan', B_nemesis: 'Ghosts' },
    { A_age: 28, A_name: 'Alan', B_character: 'Alan', B_nemesis: 'Zombies' }
];

const bench1 = [{ name: 'u2v7v', num: 1 }, { name: 'n53c8', num: 10 }, { name: 'oysce', num: 9 }, { name: '0mto2s', num: 1 }, { name: 'vkh5id', num: 4 }, { name: '5od0cf', num: 8 }, { name: 'uuulue', num: 10 }, { name: '3rgsbi', num: 9 }, { name: 'kccv35r', num: 4 }, { name: '80un74', num: 9 }, { name: 'h4pp3', num: 6 }, { name: '51bit', num: 7 }, { name: 'j9ndf', num: 8 }, { name: 'vf3u1', num: 10 }, { name: 'g0bw0om', num: 10 }, { name: 'j031x', num: 7 }, { name: 'ij3asc', num: 9 }, { name: 'byv83y', num: 8 }, { name: 'bjzp4k', num: 4 }, { name: 'f3kbnm', num: 10 }];
const bench2 = [{ friend: 'o8b', num: 8 }, { friend: 'ye', num: 2 }, { friend: '32i', num: 5 }, { friend: 'uz', num: 3 }, { friend: 'a5k', num: 4 }, { friend: 'uad', num: 7 }, { friend: '3w5', num: 10 }, { friend: 'vw', num: 10 }, { friend: 'ah', num: 4 }, { friend: 'qv', num: 7 }, { friend: 'ozv', num: 2 }, { friend: '9ri', num: 10 }, { friend: '7nu', num: 4 }, { friend: 'w3', num: 9 }, { friend: 'tgp', num: 8 }, { friend: 'ibs', num: 1 }, { friend: 'ss7', num: 6 }, { friend: 'g44', num: 9 }, { friend: 'tab', num: 9 }, { friend: 'zem', num: 10 }];
```

## --seed-contents--

```js
function hashJoin(hash1, hash2) {

  return [];
}
```

# --solutions--

```js
function hashJoin(hash1, hash2) {
  const hJoin = (tblA, tblB, strJoin) => {
    const [jA, jB] = strJoin.split('=');
    const M = tblB.reduce((a, x) => {
      const id = x[jB];
      return (
        a[id] ? a[id].push(x) : (a[id] = [x]),
        a
      );
    }, {});

    return tblA.reduce((a, x) => {
      const match = M[x[jA]];
      return match ? (
                a.concat(match.map(row => dictConcat(x, row)))
            ) : a;
    }, []);
  };

  const dictConcat = (dctA, dctB) => {
    const ok = Object.keys;
    return ok(dctB).reduce(
            (a, k) => (a[`B_${k}`] = dctB[k]) && a,
            ok(dctA).reduce(
                (a, k) => (a[`A_${k}`] = dctA[k]) && a, {}
            )
        );
  };

  return hJoin(hash1, hash2, 'name=character');
}
```
