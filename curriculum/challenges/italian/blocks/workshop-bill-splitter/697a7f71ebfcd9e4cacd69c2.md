---
id: 697a7f71ebfcd9e4cacd69c2
title: Passaggio 9
challengeType: 20
dashedName: step-9
---

# --description--

Lo specificatore di formato `:.2f` che hai usato cambia solo il modo in cui i numeri vengono visualizzati. I valori stessi mantengono tutte le loro cifre decimali. Per ottenere un numero effettivamente arrotondato e che può essere usato in calcoli successivi, puoi usare la funzione `round()`.

In una lezione precedente, hai imparato che la funzione `round()` prende due argomenti: il numero che vuoi arrotondare e il numero di cifre decimali da mantenere. Ecco un esempio:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Usa la funzione `round()` per arrotondare `final_bill` a due cifre decimali e assegna il risultato a una nuova variabile chiamata `each_pays`.

Poi, usa `print()` per mostrare la stringa `Each person pays:` seguita da uno spazio e dalla tua variabile `each_pays`. Questa volta non formattare il numero.

# --hints--

Dovresti definire una variabile chiamata `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

Dovresti usare la funzione `round()` per arrotondare `final_bill` a due cifre decimali e assegnare il risultato alla tua variabile `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

Dovresti usare `print()` per mostrare la stringa `Each person pays:` seguita da uno spazio e dalla tua variabile `each_pays`.

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
