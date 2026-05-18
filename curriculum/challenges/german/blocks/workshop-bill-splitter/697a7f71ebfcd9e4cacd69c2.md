---
id: 697a7f71ebfcd9e4cacd69c2
title: Schritt 8
challengeType: 20
dashedName: step-8
---

# --description--

Die Rechnung wird aufgeteilt, aber Division führt oft zu langen Dezimalzahlen. Da Geld normalerweise mit zwei Dezimalstellen dargestellt wird, sollten Sie das Endergebnis runden.

In einer früheren Lektion haben Sie die `round()`-Funktion kennengelernt, die zwei Argumente nimmt: die Zahl, die Sie runden möchten, und die Anzahl der Dezimalstellen, die beibehalten werden sollen. Hier ist ein Beispiel:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Verwenden Sie die `round()`-Funktion, um `final_bill` auf zwei Dezimalstellen zu runden, und weisen Sie das Ergebnis einer neuen Variablen namens `each_pays` zu.

Verwenden Sie abschließend `print()`, um den String `Each person pays:` gefolgt von einem Leerzeichen und Ihrer `each_pays`-Variablen anzuzeigen.

Damit ist der Workshop zum Aufteilen der Rechnung abgeschlossen.

# --hints--

Sie sollten eine Variable namens `each_pays` definieren.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

Sie sollten die `round()`-Funktion verwenden, um `final_bill` auf zwei Dezimalstellen zu runden und das Ergebnis Ihrer `each_pays`-Variablen zuzuweisen.

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

Sie sollten `print()` verwenden, um den String `Each person pays:` gefolgt von einem Leerzeichen und Ihrer `each_pays`-Variablen anzuzeigen.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_call("print('Each person pays:', each_pays)") or _Node(_code).has_call("print(f'Each person pays: {each_pays}')")`))
})
```

# --seed--

## --seed-contents--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total += appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

--fcc-editable-region--

--fcc-editable-region--
```

# --solutions--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total += appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

each_pays = round(final_bill, 2)
print('Each person pays:', each_pays)
```
