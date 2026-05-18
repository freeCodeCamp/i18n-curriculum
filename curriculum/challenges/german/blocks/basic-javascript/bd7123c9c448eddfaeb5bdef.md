---
id: bd7123c9c448eddfaeb5bdef
title: Die Länge eines Strings ermitteln
challengeType: 1
forumTopicId: 18182
dashedName: find-the-length-of-a-string
---

# --description--

Sie können die Länge eines `String`-Werts ermitteln, indem Sie `.length` hinter die String-Variable oder den String-Literal schreiben.

```js
console.log("Alan Peter".length);
```

Der Wert `10` würde in der Konsole angezeigt werden. Beachten Sie, dass auch das Leerzeichen zwischen „Alan“ und „Peter“ mitgezählt wird.

Wenn wir zum Beispiel eine Variable `const firstName = "Ada"` erstellt haben, könnten wir mit der Eigenschaft `Ada` herausfinden, wie lang der String `firstName.length` ist.

# --instructions--

Verwenden Sie die Eigenschaft `.length`, um `lastNameLength` auf die Anzahl der Zeichen in `lastName` zu setzen.

# --hints--

Sie sollten die Variablendeklarationen im Abschnitt `// Setup` nicht ändern.

```js
assert(
  __helpers.removeJSComments(code).match(/let lastNameLength = 0;/) &&
    __helpers.removeJSComments(code).match(/const lastName = "Lovelace";/)
);
```

`lastNameLength` sollte gleich acht sein.

```js
assert(typeof lastNameLength !== 'undefined' && lastNameLength === 8);
```

Sie sollten die Länge von `lastName` mit `.length` so ermitteln: `lastName.length`.

```js
assert(__helpers.removeJSComments(code).match(/=\s*lastName\.length/g) && !__helpers.removeJSComments(code).match(/lastName\s*=\s*8/));
```

# --seed--

## --seed-contents--

```js
// Setup
let lastNameLength = 0;
const lastName = "Lovelace";

// Only change code below this line
lastNameLength = lastName;
```

# --solutions--

```js
let lastNameLength = 0;
const lastName = "Lovelace";
lastNameLength = lastName.length;
```
