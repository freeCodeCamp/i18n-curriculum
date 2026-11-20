---
id: 697a7f71ebfcd9e4cacd69c2
title: Paso 9
challengeType: 20
dashedName: step-9
---

# --description--

El especificador de formato `:.2f` que has estado usando solo cambia cómo se muestran los números. Los valores en sí mismos aún tienen todos sus decimales. Para obtener un número que realmente esté redondeado y pueda usarse en cálculos posteriores, puedes usar la función `round()`.

En una lección anterior, aprendiste que la función `round()` toma dos argumentos: el número que quieres redondear y la cantidad de decimales que quieres conservar. Aquí tienes un ejemplo:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Usa la función `round()` para redondear `final_bill` a dos decimales y asigna el resultado a una nueva variable llamada `each_pays`.

Luego, usa `print()` para mostrar la cadena `Each person pays:` seguida de un espacio y tu variable `each_pays`. No formatees el número esta vez.

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
