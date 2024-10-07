---
id: 587d7b7d367417b2b2512b1d
title: Iterieren durch die Schlüssel eines Objekts mit einer for...in-Anweisung
challengeType: 1
forumTopicId: 301162
dashedName: iterate-through-the-keys-of-an-object-with-a-for---in-statement
---

# --description--

Sometimes you need to iterate through all the keys within an object. You can use a <dfn>for...in</dfn> loop to do this. The for...in loop looks like:

```javascript
const refrigerator = {
  'milk': 1,
  'eggs': 12,
};

for (const food in refrigerator) {
  console.log(food, refrigerator[food]);
}
```

Dieser Code protokolliert `milk 1`  und `eggs 12`, wobei jeder Schlüssel-Wert-Paar in einer eigenen Zeile steht.

Wir haben die Variable `food` im Anfang der Schleife definiert und diese Variable wurde bei jeder Iteration auf die Schlüssel des Objekts gesetzt, so dass der Name jedes Lebensmittels auf der Konsole ausgegeben wird.

**HINWEIS:** Objekte behalten keine Reihenfolge der gespeicherten Schlüssel bei, wie es bei Arrays der Fall ist; daher ist die Position eines Schlüssels auf einem Objekt oder die relative Reihenfolge, in der er erscheint, irrelevant, wenn auf diesen Schlüssel verwiesen oder zugegriffen wird.

# --instructions--

Wir haben eine Funktion `countOnline` definiert, die ein Argument (ein Nutzer-Objekt) `allUsers` akzeptiert. Verwende eine <dfn>for...in</dfn>-Anweisung innerhalb dieser Funktion, um das `allUsers`-Objekt zu durchlaufen und die Anzahl der Benutzer zurückzugeben, deren `online`-Eigenschaft auf `true` gesetzt ist. Ein Beispiel für ein Objekt, das an `countOnline` übergeben werden könnte, ist unten abgebildet. Jeder Nutzer wird eine `online`-Eigenschaft mit entweder einem `true` oder `false`-Wert besitzen.

```js
{
  Alan: {
    online: false
  },
  Jeff: {
    online: true
  },
  Sarah: {
    online: false
  }
}
```

# --hints--

Die Funktion `countOnline` sollte eine `for in` Anweisung verwenden, um die Objektschlüssel des übergebenen Objekts zu durchlaufen.

```js
assert(
  __helpers.removeJSComments(code).match(
    /for\s*\(\s*(var|let|const)\s+[a-zA-Z_$]\w*\s+in\s+[a-zA-Z_$]\w*\s*\)/
  )
);
```

Die Funktion `countOnline` sollte `1` zurückgeben, wenn das Objekt `{ Alan: { online: false }, Jeff: { online: true }, Sarah: { online: false } }` an ihn übergeben wurde

```js
assert(countOnline(usersObj1) === 1);
```

Die Funktion `countOnline` sollte `2` zurückgeben, wenn das Objekt `{ Alan: { online: true }, Jeff: { online: false }, Sarah: { online: true } }` an ihn übergeben wurde

```js
assert(countOnline(usersObj2) === 2);
```

Die Funktion `countOnline` sollte `0` zurückgeben, wenn das Objekt `{ Alan: { online: false }, Jeff: { online: false }, Sarah: { online: false } }` an ihn übergeben wurde

```js
assert(countOnline(usersObj3) === 0);
```

# --seed--

## --after-user-code--

```js
const usersObj1 = {
  Alan: {
    online: false
  },
  Jeff: {
    online: true
  },
  Sarah: {
    online: false
  }
}

const usersObj2 = {
  Alan: {
    online: true
  },
  Jeff: {
    online: false
  },
  Sarah: {
    online: true
  }
}


const usersObj3 = {
  Alan: {
    online: false
  },
  Jeff: {
    online: false
  },
  Sarah: {
    online: false
  }
}
```

## --seed-contents--

```js
const users = {
  Alan: {
    online: false
  },
  Jeff: {
    online: true
  },
  Sarah: {
    online: false
  }
}

function countOnline(allUsers) {
  // Only change code below this line

  // Only change code above this line
}

console.log(countOnline(users));
```

# --solutions--

```js
function countOnline(allUsers) {
  let numOnline = 0;
  for(const user in allUsers){
    if(allUsers[user].online) {
      numOnline++;
    }
  }
  return numOnline;
}
```
