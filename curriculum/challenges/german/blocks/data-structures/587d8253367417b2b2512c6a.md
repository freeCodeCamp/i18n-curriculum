---
id: 587d8253367417b2b2512c6a
title: Typisierte Arrays
challengeType: 1
forumTopicId: 301716
dashedName: typed-arrays
---

# --description--

Arrays are JavaScript objects that can hold a lot of different elements.

```js
var complexArr = [1, 5, "2", "Word", {"name": "James"}];
```

Im Grunde passiert im Hintergrund, dass dein Browser automatisch die richtige Menge an Speicherplatz für dieses Array zur Verfügung stellt. Er wird sich auch ändern, wenn du Daten hinzufügst oder entfernst.

In der Welt der hohen Leistung und der verschiedenen Elementtypen musst du jedoch manchmal genauer festlegen, wie viel Speicher einem Array zugewiesen wird.

<dfn>Typisierte Arrays</dfn> sind die Antwort auf dieses Problem. Du kannst nun angeben, wie viel Speicher du einem Array zuweisen willst. Im Folgenden findest du einen grundlegenden Überblick über die verschiedenen Arten von Arrays und die Größe der einzelnen Elemente in Bytes.

<table><tbody><tr><th>Type</th><th>Each element size in bytes</th></tr><tr><td><code>Int8Array</code></td><td>1</td></tr><tr><td><code>Uint8Array</code></td><td>1</td></tr><tr><td><code>Uint8ClampedArray</code></td><td>1</td></tr><tr><td><code>Int16Array</code></td><td>2</td></tr><tr><td><code>Uint16Array</code></td><td>2</td></tr><tr><td><code>Int32Array</code></td><td>4</td></tr><tr><td><code>Uint32Array</code></td><td>4</td></tr><tr><td><code>Float32Array</code></td><td>4</td></tr><tr><td><code>Float64Array</code></td><td>8</td></tr></tbody></table>

Es gibt zwei Möglichkeiten, diese Art von Arrays zu erstellen. Eine Möglichkeit besteht darin, ihn direkt zu erstellen. Im Folgenden wird beschrieben, wie man ein `Int16Array` der Länge 3 erstellt.

```js
var i8 = new Int16Array(3);
console.log(i8);
// Returns [0, 0, 0]
```

Du kannst auch einen <dfn>Puffer</dfn> erstellen, um die Datenmenge (in Bytes) zuzuweisen, die das Array aufnehmen soll. **Note**  
Um typisierte Arrays mit Puffern zu erstellen, musst du die Anzahl der Bytes auf ein Vielfaches der oben aufgeführten Bytes festlegen.

```js
// Create same Int16Array array differently
var byteSize = 6; // Needs to be multiple of 2
var buffer = new ArrayBuffer(byteSize);
var i8View = new Int16Array(buffer);
buffer.byteLength; // Returns 6
i8View.byteLength; // Returns 6
console.log(i8View); // Returns [0, 0, 0]
```

<dfn>Puffer</dfn> sind Allzweckobjekte, die nur Daten transportieren. Du kannst nicht normal auf sie zugreifen. Um auf sie zuzugreifen, musst du zunächst eine <dfn>Ansicht</dfn> erstellen.

```js
i8View[0] = 42;
console.log(i8View); // Returns [42, 0, 0]
```

**Note**  
Typisierte Arrays verfügen nicht über einige der Methoden, die traditionelle Arrays haben, wie z.B. `.pop()` or `.push()`. Typisierte Arrays versagen auch bei `Array.isArray()`, das überprüft, ob etwas ein Array ist. Obwohl dies einfacher ist, kann es für weniger anspruchsvolle JavaScript-Engines ein Vorteil sein, sie zu implementieren.

# --instructions--

Erstelle zunächst einen `buffer`, der 64 Byte groß ist. Dann erstelle ein `Int32Array` typisiertes Array mit einer Ansicht davon namens `i32View`.

# --hints--

Dein `buffer` sollte 64 Bytes groß sein.

```js
assert(buffer.byteLength === 64);
```

Ihre `i32View` Ansicht des Puffers sollte 64 Bytes groß sein.

```js
assert(i32View.byteLength === 64);
```

Deine `i32View` Ansicht des Puffers sollte 16 Elemente lang sein.

```js
assert(i32View.length === 16);
```

# --seed--

## --seed-contents--

```js
var buffer;
var i32View;
```

# --solutions--

```js
var buffer = new ArrayBuffer(64);
var i32View = new Int32Array(buffer);
```
