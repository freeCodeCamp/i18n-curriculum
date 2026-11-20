---
id: 6af5ed0588b6497dfddeeeb8
title: Schritt 5
challengeType: 20
dashedName: step-5
---

# --description--

Listen sind veränderbar, das heißt, Sie können sie nach ihrer Erstellung ändern.

Die `append()`-Methode fügt ein Element am Ende einer Liste hinzu. Sie ändert die Liste direkt, sodass Sie das Ergebnis nicht erneut der Variablen zuweisen müssen:

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

Der Dirigent möchte das Konzert mit einem lebhaften Stück beenden. Verwenden Sie `append()`, um den String `Slavonic Dance No. 8` ans Ende von `pieces` anzufügen. Geben Sie anschließend `pieces` aus, um die aktualisierte Liste zu sehen.

# --hints--

Sie sollten `pieces.append()` mit dem String `Slavonic Dance No. 8` aufrufen.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

Sie sollten `pieces` ausgeben, nachdem Sie `pieces.append()` aufgerufen haben.

```js
({ test: () => runPython(`
assert _Node(_code).is_ordered("pieces.append('Slavonic Dance No. 8')", "print(pieces)")
`) });
```

# --seed--

## --seed-contents--

```py
pieces = ['Carnival Overture', 'Song to the Moon', 'Silent Woods']
print(f'Opening piece: {pieces[0]}')
print(f'Closing piece: {pieces[-1]}')
print(f'Number of pieces: {len(pieces)}')

--fcc-editable-region--

--fcc-editable-region--
```
