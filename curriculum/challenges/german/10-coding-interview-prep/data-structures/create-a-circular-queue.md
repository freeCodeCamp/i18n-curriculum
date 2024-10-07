---
id: 587d8255367417b2b2512c75
title: Erstelle eine Circular-Queue
challengeType: 1
forumTopicId: 301625
dashedName: create-a-circular-queue
---

# --description--

In this challenge you will be creating a Circular Queue. A circular queue is a queue that writes to the end of a collection then begins overwriting itself at the beginning of the collection. This type of data structure is useful in certain situations. For example, a circular queue can be used for streaming media. Once the queue is full, new media data will overwrite old data.

Ein guter Weg, dieses Konzept zu illustrieren, ist mit einem Array der Länge `5`:

```js
[null, null, null, null, null]
 ^Read @ 0
 ^Write @ 0
```

Hier an der Stelle `0` gelesen und geschrieben. Nun bekommt die Queue 3 neue Einträge: `a`, `b`, und `c`. Unsere Queue sieht nun wie folgt aus:

```js
[a, b, c, null, null]
 ^Read @ 0
          ^Write @ 3
```

Wenn der Lesekopf liest, kann er Werte entfernen oder behalten:

```js
[null, null, null, null, null]
                   ^Read @ 3
                   ^Write @ 3
```

Jetzt fügen wir die Werte `d`, `e`, und `f` der Queue hinzu. Sobald wir das Ende des Arrays erreicht haben, beginnen wir wieder von vorne:

```js
[f, null, null, d, e]
                ^Read @ 3
    ^Write @ 1
```

Dieser Ansatz braucht eine konstante Menge an Speicher, ermöglicht es jedoch signifikant größere Dateien zu verarbeiten.

# --instructions--

In dieser Aufgabe werden wir eine Circular-Queue implementieren. Die Circular-Queue sollte die Methoden `enqueue` und `dequeue` anbieten, welche es dir erlauben von der Queue zu lesen und zu schreiben. Die Klasse selbst sollte einen ganzzahligen Wert als Eingabe akzeptieren, welcher die Größe der Queue bei der Erstellung angibt. Wir haben bereits die Start-Version der Klasse für dich im Editor vorgeschrieben.

Wenn du Elemente aus der Queue entfernst, sollte der Zeiger weiterwandern und einen dann neuen Schleifendurchlauf starten, falls das Ende der Queue erreicht wurde. Die Methode `enqueue` sollte im erfolgreichen Fall, das von dir hinzugefügte Element zurückgeben; andernfalls soll `null` zurückgeliefert werden.

Gleichermaßen soll der Lese-Zeiger beim Entfernen von Elementen weiterwandern. Wenn du ein Element entfernst, soll das entfernte Element zurückgegeben werden. Falls ein Element nicht entfernt werden konnte, soll `null` zurückgegeben werden.

Der Schreib-Zeiger darf nicht über den Lese-Zeiger hinausgehen (unsere Klasse erlaubt es nicht Daten zu überschreiben, die bis jetzt noch nicht gelesen wurden) und der Lese-Zeiger sollte nicht in der Lage sein, über bereits geschriebene Daten weiterzuwandern.

# --hints--

Die Methode `enqueue` soll Elemente zur Circular-Queue hinzufügen.

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(591);
    var print = test.print();
    return print[0] === 17 && print[1] === 32 && print[2] === 591;
  })()
);
```

Du solltest keine Elemente nach dem Lese-Zeiger einfügen.

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(591);
    test.enqueue(13);
    test.enqueue(25);
    test.enqueue(59);
    var print = test.print();
    return print[0] === 17 && print[1] === 32 && print[2] === 591;
  })()
);
```

Die Methode `dequeue` soll Elemente aus der Queue entfernen.

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(591);
    return (
      test.dequeue() === 17 && test.dequeue() === 32 && test.dequeue() === 591
    );
  })()
);
```

Sobald ein Element entfernt wurde, sollte die Position in der Queue auf `null` gesetzt werden.

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(672);
    test.dequeue();
    test.dequeue();
    var print = test.print();
    return print[0] === null && print[1] === null && print[2] === 672;
  })()
);
```

Beim Versuch Elemente, welche über den Schreib-Zeiger hinausgehend platziert sind, zu entfernen soll `null` zurückgegeben werden und die Position des Schreib-Zeigers sollte unverändert bleiben.

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(591);
    return (
      test.dequeue() === 17 &&
      test.dequeue() === 32 &&
      test.dequeue() === 591 &&
      test.dequeue() === null &&
      test.dequeue() === null &&
      test.dequeue() === null &&
      test.dequeue() === null &&
      test.enqueue(100) === 100 &&
      test.dequeue() === 100
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
class CircularQueue {
  constructor(size) {

    this.queue = [];
    this.read = 0;
    this.write = 0;
    this.max = size - 1;

    while (size > 0) {
      this.queue.push(null);
      size--;
    }
  }

  print() {
    return this.queue;
  }

  enqueue(item) {
    // Only change code below this line

    // Only change code above this line
  }

  dequeue() {
    // Only change code below this line

    // Only change code above this line
  }
}
```

# --solutions--

```js
class CircularQueue {
  constructor(size) {
    this.queue = [];
    this.read = 0;
    this.write = 0;
    this.max = size - 1;

    while (size > 0) {
      this.queue.push(null);
      size--;
    }
  }

  print() {
    return this.queue;
  }

  enqueue(item) {
    // Only change code below this line
    console.log(this.write, this.max);
    if (this.queue[this.write] === null) {
      this.queue[this.write++] = item;

      if (this.write > this.max) {
        this.write = 0;
      }
      return item;
    }
    return null;
    // Only change code above this line
  }

  dequeue() {
    // Only change code below this line
    if (this.queue[this.read] !== null) {
      let item = this.queue[this.read];
      this.queue[this.read++] = null;
      if (this.read > this.max) {
        this.read = 0;
      }
      return item;
    }
    return null;
    // Only change code above this line
  }
}
```
