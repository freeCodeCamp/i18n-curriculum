---
id: 56533eb9ac21ba0edf2244be
title: Globaler Gültigkeitsbereich (Scope) und Funktionen
challengeType: 1
forumTopicId: 18193
dashedName: global-scope-and-functions
---

# --description--

In JavaScript, <dfn>scope</dfn> refers to the visibility of variables. Variables which are defined outside of a function block have <dfn>Global</dfn> scope. This means, they can be seen everywhere in your JavaScript code.

Variablen, die ohne das Schlüsselwort `let` oder `const` deklariert werden, werden automatisch in dem Bereich `global` erstellt. Dies kann an anderer Stelle in deinem Code oder beim erneuten Ausführen einer Funktion unbeabsichtigte Folgen haben. Du solltest deine Variablen immer mit `let` oder `const` deklarieren.

# --instructions--

Benutze `let` oder `const`, um eine globale Variable namens `myGlobal` außerhalb jeglicher Funktion zu deklarieren. Initialisiere sie mit einem Wert von `10`.

Weise innerhalb der Funktion `fun1`, `oopsGlobal` den Wert `5` zu, ***ohne*** die Schlüsselwörter `var`, `let` oder `const` zu verwenden.

# --before-each--

```js
var oopsGlobal;
```

# --hints--

`myGlobal` sollte definiert werden

```js
assert(typeof myGlobal != 'undefined');
```

`myGlobal` sollte einen Wert von `10` haben

```js
assert(myGlobal === 10);
```

`myGlobal` sollte mit dem Schlüsselwort `let` oder `const` deklariert werden

```js
assert(/(let|const)\s+myGlobal/.test(__helpers.removeJSComments(code)));
```

`oopsGlobal` sollte eine globale Variable sein und einen Wert von `5` haben

```js
fun1();
assert(typeof oopsGlobal != 'undefined');
```

# --seed--

## --seed-contents--

```js
// Declare the myGlobal variable below this line


function fun1() {
  // Assign 5 to oopsGlobal here

}

// Only change code above this line

function fun2() {
  let output = "";
  if (typeof myGlobal != "undefined") {
    output += "myGlobal: " + myGlobal;
  }
  if (typeof oopsGlobal != "undefined") {
    output += " oopsGlobal: " + oopsGlobal;
  }
  console.log(output);
}
```

# --solutions--

```js
const myGlobal = 10;

function fun1() {
  oopsGlobal = 5;
}

function fun2() {
  let output = "";
  if(typeof myGlobal != "undefined") {
    output += "myGlobal: " + myGlobal;
  }
  if(typeof oopsGlobal != "undefined") {
    output += " oopsGlobal: " + oopsGlobal;
  }
  console.log(output);
}
```
