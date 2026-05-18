---
id: cf1111c1c12feddfaeb3bdef
title: Bedingte Logik mit if-Anweisungen verwenden
challengeType: 1
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

`if` Anweisungen werden verwendet, um Entscheidungen im Code zu treffen. Das Schlüsselwort `if` sagt JavaScript, den Code in den geschweiften Klammern unter bestimmten Bedingungen auszuführen, die in den runden Klammern definiert sind. Diese Bedingungen sind als `Boolean` Bedingungen bekannt und sie können nur `true` oder `false` sein.

Wenn die Bedingung zu `true` ausgewertet wird, führt das Programm die Anweisung innerhalb der geschweiften Klammern aus. Wenn die Boolean-Bedingung zu `false` ausgewertet wird, wird die Anweisung innerhalb der geschweiften Klammern nicht ausgeführt.

**Pseudocode**

<blockquote>if (<i>Bedingung ist wahr</i>) {<br>  <i>Anweisung wird ausgeführt</i><br>}</blockquote>

**Beispiel**

```js
function test(myCondition) {
  if (myCondition) {
    return "It was true";
  }
  return "It was false";
}

test(true);
test(false);
```

`test(true)` gibt den String `It was true` zurück, und `test(false)` gibt den String `It was false` zurück.

Wenn `test` mit dem Wert `true` aufgerufen wird, bewertet die `if` Anweisung `myCondition`, um zu prüfen, ob es `true` ist oder nicht. Da es `true` ist, gibt die Funktion `It was true` zurück. Wenn wir `test` mit dem Wert `false` aufrufen, ist `myCondition` *nicht* `true` und die Anweisung in den geschweiften Klammern wird nicht ausgeführt, und die Funktion gibt `It was false` zurück.

# --instructions--

Erstellen Sie eine `if` Anweisung innerhalb der Funktion, die `Yes, that was true` zurückgibt, wenn der Parameter `wasThatTrue` `true` ist, und andernfalls `No, that was false` zurückgibt.

# --hints--

`trueOrFalse` sollte eine Funktion sein

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)` sollte einen String zurückgeben

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)` sollte einen String zurückgeben

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)` sollte den String `Yes, that was true` zurückgeben

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)` sollte den String `No, that was false` zurückgeben

```js
assert(trueOrFalse(false) === 'No, that was false');
```

# --seed--

## --seed-contents--

```js
function trueOrFalse(wasThatTrue) {
  // Only change code below this line



  // Only change code above this line

}
```

# --solutions--

```js
function trueOrFalse(wasThatTrue) {
  if (wasThatTrue) {
    return "Yes, that was true";
  }
  return "No, that was false";
}
```
