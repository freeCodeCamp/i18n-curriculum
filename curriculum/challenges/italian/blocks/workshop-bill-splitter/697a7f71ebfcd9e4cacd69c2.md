---
id: 697a7f71ebfcd9e4cacd69c2
title: Passaggio 8
challengeType: 20
dashedName: step-8
---

# --description--

Il conto è diviso, ma la divisione spesso produce numeri decimali lunghi. Poiché il denaro è solitamente rappresentato con due cifre decimali, dovresti arrotondare il risultato finale.

Python fornisce una funzione integrata `round()` per questo. Prende due argomenti: il numero che vuoi arrotondare e il numero di cifre decimali da mantenere. Ecco un esempio:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Usa la funzione `round()` per arrotondare `final_bill` a due cifre decimali e assegna il risultato a una nuova variabile chiamata `each_pays`.

Infine, usa `print()` per mostrare la stringa `Each person pays:` seguita da uno spazio e dalla tua variabile `each_pays`.

Con questo, il workshop per dividere il conto è completo.

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
