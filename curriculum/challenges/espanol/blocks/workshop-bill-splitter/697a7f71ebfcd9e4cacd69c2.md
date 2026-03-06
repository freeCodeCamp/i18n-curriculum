---
id: 697a7f71ebfcd9e4cacd69c2
title: Paso 8
challengeType: 20
dashedName: step-8
---

# --description--

La cuenta se divide, pero la división a menudo resulta en números decimales largos. Dado que el dinero generalmente se representa con dos decimales, debes redondear el resultado final.

Python proporciona una `round()` función incorporada para esto. Toma dos argumentos: el número que quieres redondear y la cantidad de decimales que quieres conservar. Aquí tienes un ejemplo:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Usa la `round()` función para redondear `final_bill` a dos decimales y asigna el resultado a una nueva variable llamada `each_pays`.

Finalmente, usa `print()` para mostrar la cadena `Each person pays:` seguida de un espacio y tu variable `each_pays`.

Con eso, el taller de división de cuentas está completo.

# --hints--

Debes definir una variable llamada `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

Debes usar la función `round()` para redondear `final_bill` a dos decimales y asignar el resultado a tu variable `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

Debes usar `print()` para mostrar la cadena `Each person pays:` seguida de un espacio y tu variable `each_pays`.

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
