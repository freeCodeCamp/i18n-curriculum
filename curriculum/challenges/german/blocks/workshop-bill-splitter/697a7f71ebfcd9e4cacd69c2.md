---
id: 697a7f71ebfcd9e4cacd69c2
title: Schritt 9
challengeType: 20
dashedName: step-9
---

# --description--

Der Formatbezeichner `:.2f`, den Sie verwendet haben, ändert nur, wie Zahlen angezeigt werden. Die Werte selbst behalten weiterhin alle ihre Dezimalstellen. Um eine Zahl zu erhalten, die tatsächlich gerundet ist und für weitere Berechnungen verwendet werden kann, können Sie die `round()`-Funktion nutzen.

In einer früheren Lektion haben Sie gelernt, dass die `round()`-Funktion zwei Argumente nimmt: die Zahl, die Sie runden möchten, und die Anzahl der Dezimalstellen, die beibehalten werden sollen. Hier ist ein Beispiel:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Verwenden Sie die `round()`-Funktion, um `final_bill` auf zwei Dezimalstellen zu runden, und weisen Sie das Ergebnis einer neuen Variablen namens `each_pays` zu.

Verwenden Sie dann `print()`, um den String `Each person pays:` gefolgt von einem Leerzeichen und Ihrer Variable `each_pays` auszugeben. Formatieren Sie die Zahl diesmal nicht.

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
    test: () => runPython(`
        import io, contextlib, re
        buffer = io.StringIO()
        with contextlib.redirect_stdout(buffer):
            exec(_code)
        assert re.search(r"^Each person pays: 62\\.1$", buffer.getvalue(), re.M)
    `)
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
drinks = 64.11

running_total += appetizers + main_courses + desserts + drinks
print(f'Total bill so far: {running_total:.2f}')

tip = running_total * 0.25
print(f'Tip amount: {tip:.2f}')

running_total += tip
print(f'Total with tip: {running_total:.2f}')

final_bill = running_total / num_of_friends
print(f'Bill per person: {final_bill:.2f}')

--fcc-editable-region--

--fcc-editable-region--
```
